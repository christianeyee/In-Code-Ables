require 'elasticsearch/model'

class Research < ActiveRecord::Base
	include Elasticsearch::Model
  	include Elasticsearch::Model::Callbacks

	mount_uploader :attachment, AttachmentUploader
	has_and_belongs_to_many :categories

	# NOT NEEDED
	has_many :active_continuations, class_name: "Continuation",
                                  foreign_key: "follower_id",
                                  dependent: :destroy
 	has_many :following, through: :active_continuations, source: :followed
 	###

 	has_many :passive_continuations, class_name: "Continuation",
                                     foreign_key: "followed_id",
                                     dependent: :destroy
 	has_many :followers, through: :passive_continuations, source: :follower


	def continue(continuation)
		passive_continuations.create(followed_id: id, follower_id: continuation.id)
	end

	def self.next
		research = Research.order("updated_at").first
		research.touch unless research.nil?
		research
	end

	def author
	end

	def self.haraya
		ids = Research.pluck(:id).shuffle[0..1]
		Research.where(id: ids)
	end

	def self.search(query)
	  __elasticsearch__.search(
	    {
	      query: {
	        multi_match: {
	          query: query,
	          fields: ['title^10', 'abstract', 'future', 'significance']
	        }
	      },
	      highlight: {
	        pre_tags: ['<em>'],
	        post_tags: ['</em>'],
	        fields: {
	          title: {},
	          abstract: {},
	          future: {},
	          significance: {}
	        }
	      }
	    }
	  )
	end

	settings index: { number_of_shards: 1 } do
	  mappings dynamic: 'false' do
	  indexes :title, analyzer: 'english'
	  indexes :abstract, analyzer: 'english'
	  indexes :future, analyzer: 'english'
	  indexes :significance, analyzer: 'english'
	end
end
end

# Delete the previous articles index in Elasticsearch
Research.__elasticsearch__.client.indices.delete index: Research.index_name rescue nil

# Create the new index with the new mapping
Research.__elasticsearch__.client.indices.create \
  index: Research.index_name,
  body: { settings: Research.settings.to_hash, mappings: Research.mappings.to_hash }

# Index all article records from the DB to Elasticsearch
Research.import
