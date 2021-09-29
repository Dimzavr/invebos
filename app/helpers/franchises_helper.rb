module FranchisesHelper
  
    def franchise_type(franchise_type)
    if franchise_type == "Auto"
      content_tag :span, "#{franchise_type}", class: "tag is-primary"
    elsif franchise_type == "Children's franchises"
      content_tag :span, "#{franchise_type}", class: "tag is-link"
    elsif franchise_type == "Internet and IT"
      content_tag :span, "#{franchise_type}", class: "tag is-warning"
    elsif franchise_type == "Medicine"
      content_tag :span, "#{franchise_type}", class: "tag is-info"
    elsif franchise_type == "Training and education"
      content_tag :span, "#{franchise_type}", class: "tag is-link"
    elsif franchise_type == "Recreation and entertainment"
      content_tag :span, "#{franchise_type}", class: "tag is-warning"
    elsif franchise_type == "Nutrition"
      content_tag :span, "#{franchise_type}", class: "tag is-link"
    elsif franchise_type == "Production"
      content_tag :span, "#{franchise_type}", class: "tag is-warning"
    elsif franchise_type == "Retail"
      content_tag :span, "#{franchise_type}", class: "tag is-warning"
    elsif franchise_type == "Sports, health and beauty"
      content_tag :span, "#{franchise_type}", class: "tag is-link"
    elsif franchise_type == "Construction"
      content_tag :span, "#{franchise_type}", class: "tag is-warning"   
     elsif franchise_type == "Business services (b2b)"
      content_tag :span, "#{franchise_type}", class: "tag is-warning"
    elsif franchise_type == "Services for the public"
      content_tag :span, "#{franchise_type}", class: "tag is-link"
    elsif franchise_type == "Financial services"
      content_tag :span, "#{franchise_type}", class: "tag is-warning"       
    else
      ""
    end
  end


  def franchise_author(franchise)
    user_signed_in? && current_user.id == franchise.user_id
  end	

end	