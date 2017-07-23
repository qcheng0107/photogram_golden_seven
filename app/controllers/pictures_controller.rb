class PicturesController < ApplicationController
   def new_form

       render("pic_templates/new_form.html.erb")
   end
   
   def create_row
       
       p = Photo.new
       p.source = params["the_source"]
       p.caption = params["the_caption"]
       p.save
       
       @photo_count = Photo.count
       
       redirect_to("/photos")
       #render("pic_templates/create_row.html.erb")
   end
   
   def index
       
       @all_photos = Photo.all
       
       
       render("pic_templates/index.html.erb")
   end
   
    def show
   
       the_id_number = params["the_id"]
       pic = Photo.find(the_id_number)
       @the_source = pic.source
       @the_caption = pic.caption
    #   @the_time =
       @an_id = params["the_id"]
   
   render("pic_templates/show.html.erb")
    end
   
    def edit_form
        
        the_id = params["an_id"]
        pic = Photo.find(the_id)
       @the_source = pic.source
       @the_caption = pic.caption
       @an_id = params["an_id"]
        
       render("pic_templates/edit_form.html.erb")
    end
    
    def update_row
        
        @an_id = params["some_id"]
        
       render("pic_templates/update_row.html.erb")
    end
    
    def destroy_row
    
     i =Photo.find(params["toast_id"])
     i.destroy
     @photo_count = Photo.count
       render("pic_templates/destroy_row.html.erb") 
     
    end
end 
