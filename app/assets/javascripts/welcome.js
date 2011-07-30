/*
project = new Project({name:"mvn-project-wizard",artificactId:"mvn-project-wizard",version:"1.0.0",groupId:"au.id.wolfe"});
 */

_.templateSettings = {
  interpolate : /\{\{(.+?)\}\}/g
};

(function($){

    window.Project = Backbone.Model.extend({});

    window.ProjectView = Backbone.View.extend({
        initialize: function(){
            this.template = _.template($('#project-template').html());
        },

        render: function(){
            var renderedContent = this.template(this.model.toJSON());
            $(this.el).html(renderedContent);
            return this;
        }

    });



})(jQuery);