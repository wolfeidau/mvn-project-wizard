/*
project = new Project({name:"mvn-project-wizard",artificactId:"mvn-project-wizard",version:"1.0.0",groupId:"au.id.wolfe"});
 */

(function($) {

    // Dropdown for topbar nav
    $("body").bind("click", function (e) {
      $('a.menu').parent("li").removeClass("open");
    });
    
    $("a.menu").click(function (e) {
      var $li = $(this).parent("li").toggleClass('open');
      return false;
    });
})(jQuery);
