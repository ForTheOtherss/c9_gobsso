// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){
  $('.bxslider').bxSlider({
    mode: 'fade',
    // slideWidth: 450,
    autoHover: true,
    auto: true,
    pager: true,
    pause: 2000
    });
});


$(function(){
  $('.tabSet').each(function(){
    var topDiv = $(this);
    var anchors = topDiv.find('ul.tabs a');
    var panelDivs = topDiv.find('div.panel');
    
    var lastAnchor;
    var lastPanel;
    
    anchors.show();
    lastAnchor = anchors.filter('.on');
    lastPanel = $(lastAnchor.attr('href'));
    
    panelDivs.hide();
    lastPanel.show();
    
    anchors.click(function(event){
      event.preventDefault();
      var currentAnchor = $(this);
      var currentPanel = $(currentAnchor.attr('href'));
      lastAnchor.removeClass('on');
      currentAnchor.addClass('on');
      lastPanel.hide();
      currentPanel.show();
      lastAnchor = currentAnchor;
      lastPanel = currentPanel;
    });
  });
});


$(function(){
  var i = 1;
  $('.question_plus').click(function(){
    $('.question_wrap').eq(i).show();
    $('.question_wrap input').eq(i).attr('name', 'input_question' + i);
    $('.question_wrap textarea').eq(i).attr('name', 'input_answer' + i);
    i++;
  });
  $('.question_trash').click(function(){
    i--;
    $('.question_wrap').eq(i).hide();
    $('.question_wrap input').eq(i).removeAttr('name');
    $('.question_wrap textarea').eq(i).removeAttr('name');
  });
});

$(function(){
  $(".always_apply_checkbox").change(function(){
        if($(".always_apply_checkbox").is(":checked")){
            $('.datetime_wrap').hide();
        }else{
            $('.datetime_wrap').show();
        }
    });
});


// '지원자 보기 창'에서의 아코디언 기능
$(function(){
  $('.accordion').each(function(){
    var dl = $(this);
    var dtDetails = dl.find('dt .show_apply_details');
    var allDd = dl.find('dd');
    allDd.hide();
    dtDetails.css('cursor','pointer');
    dtDetails.click(function(){
      var dt = $(this).parent();
      var dd = dt.next();
      var button = $(this).find('span');
      if(dd.css('display') == 'none'){
        dd.show();
        button.css('background-color', 'rgb(200, 200, 200)');
        button.text('닫기');
      } else {
        dd.hide();
        button.css('background-color', '#afd79b');
        button.text('보기');
      }
    });
  });
});


// 즐겨찾기 추가, 삭제 알림창
$(function(){
  $('.favorite1').click(function(){
    alert("즐겨찾기에 추가되었습니다.");
  });
  $('.favorite2').click(function(){
    alert("즐겨찾기에서 삭제되었습니다.");
  })
});