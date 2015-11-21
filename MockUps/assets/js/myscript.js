$(function(){
  var screen_height =$(window).height();
  var screen_width =$(window).width();
  var main_feat=$('.main-feature');
  var sub_feat1=$('.sub-feature:nth-of-type(even)');
  var sub_feat2=$('.sub-feature:nth-of-type(odd)');
  if(screen_height>screen_width){
    console.log('true');
    main_feat.css("height","65vw");
    main_feat.css("width","65vw");
    sub_feat1.css("height","35vw");
    sub_feat1.css("width","35vw");
    sub_feat2.css("height","25vw");
    sub_feat2.css("width","25vw");
  }
  else {
    console.log('false');
  }
});
