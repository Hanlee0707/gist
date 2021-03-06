# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

Article.create([
  { :title => "Third article", :status => nil, :contributor_id => nil, :category => "Business", :created_at => "2013-06-26 13:53:42", :updated_at => "2013-06-26 13:53:42" }
], :without_protection => true )



ArticleComponent.create([
  { :article_id => 4, :component_type_id => 1, :position => 1, :created_at => "2013-06-26 13:53:42", :updated_at => "2013-06-26 13:53:42", :properties => {"content"=>"this is the background."}, :title => "Background", :template => 1 },
  { :article_id => 4, :component_type_id => 1, :position => 2, :created_at => "2013-06-26 13:53:42", :updated_at => "2013-06-26 13:53:42", :properties => {"content"=>"This is the summary."}, :title => "Summary", :template => 1 },
  { :article_id => 4, :component_type_id => 4, :position => 5, :created_at => "2013-06-26 14:25:02", :updated_at => "2013-06-26 14:25:02", :properties => {"top_caption"=>"top caption", "url"=>"http://3.bp.blogspot.com/-aOenLqjXyf0/T7xFqBprr5I/AAAAAAAAAB8/5QxG9qQrgok/s1600/club_wallpapers13_artshare.ru.jpg", "bottom_caption"=>"bottom caption"}, :title => "Image", :template => 2 },
  { :article_id => 4, :component_type_id => 5, :position => 5, :created_at => "2013-06-26 14:43:30", :updated_at => "2013-06-26 14:43:30", :properties => {"url"=>"http://youtu.be/5NV6Rdv1a3I", "bottom_caption"=>"bottom caption."}, :title => "Sample Video", :template => 3 }
], :without_protection => true )



ComponentField.create([
  { :name => "content", :field_type => "text_area", :required => false, :component_type_id => 1, :created_at => "2013-06-18 10:17:01", :updated_at => "2013-06-18 10:17:01" },
  { :name => "name", :field_type => "text_field", :required => false, :component_type_id => 3, :created_at => "2013-06-18 10:33:10", :updated_at => "2013-06-18 10:33:10" },
  { :name => "title", :field_type => "text_field", :required => false, :component_type_id => 3, :created_at => "2013-06-18 10:33:10", :updated_at => "2013-06-18 10:33:10" },
  { :name => "content", :field_type => "text_area", :required => false, :component_type_id => 3, :created_at => "2013-06-18 10:33:10", :updated_at => "2013-06-18 10:33:10" },
  { :name => "top_caption", :field_type => "text_area", :required => false, :component_type_id => 4, :created_at => "2013-06-20 12:38:17", :updated_at => "2013-06-25 15:03:00" },
  { :name => "url", :field_type => "text_field", :required => false, :component_type_id => 4, :created_at => "2013-06-20 12:38:17", :updated_at => "2013-06-25 15:03:01" },
  { :name => "bottom_caption", :field_type => "text_area", :required => false, :component_type_id => 4, :created_at => "2013-06-20 12:38:17", :updated_at => "2013-06-25 15:03:01" },
  { :name => "top_caption", :field_type => "text_area", :required => false, :component_type_id => 5, :created_at => "2013-06-20 12:38:36", :updated_at => "2013-06-25 15:12:04" },
  { :name => "url", :field_type => "text_field", :required => true, :component_type_id => 5, :created_at => "2013-06-20 12:38:36", :updated_at => "2013-06-25 15:12:04" },
  { :name => "bottom_caption", :field_type => "text_area", :required => false, :component_type_id => 5, :created_at => "2013-06-20 12:38:36", :updated_at => "2013-06-25 15:12:04" }
], :without_protection => true )



ComponentType.create([
  { :name => "text", :created_at => "2013-06-18 10:17:01", :updated_at => "2013-06-18 10:17:01" },
  { :name => "number", :created_at => "2013-06-18 10:20:56", :updated_at => "2013-06-18 10:20:56" },
  { :name => "quote", :created_at => "2013-06-18 10:33:10", :updated_at => "2013-06-18 10:33:10" },
  { :name => "image", :created_at => "2013-06-20 12:38:17", :updated_at => "2013-06-20 12:38:17" },
  { :name => "video", :created_at => "2013-06-20 12:38:36", :updated_at => "2013-06-20 12:38:36" },
  { :name => "news_link", :created_at => "2013-06-26 06:09:03", :updated_at => "2013-06-26 06:09:03" }
], :without_protection => true )



NewsLink.create([
  { :publisher => nil, :url => nil, :created_at => nil, :updated_at => nil, :article_component_id => nil }
], :without_protection => true )



Number.create([
  { :value => "124234", :explanation => "sdfsdf", :created_at => "2013-06-25 16:49:07", :updated_at => "2013-06-25 16:49:07", :article_component_id => 1 },
  { :value => "34wer", :explanation => "dsf", :created_at => "2013-06-25 16:49:07", :updated_at => "2013-06-25 16:49:07", :article_component_id => 1 },
  { :value => "30", :explanation => "jopok", :created_at => "2013-06-26 13:10:11", :updated_at => "2013-06-26 13:10:11", :article_component_id => 5 },
  { :value => "40", :explanation => "mayak sabum", :created_at => "2013-06-26 13:10:12", :updated_at => "2013-06-26 13:10:12", :article_component_id => 5 },
  { :value => "12000", :explanation => "money", :created_at => "2013-06-26 13:24:33", :updated_at => "2013-06-26 13:24:33", :article_component_id => 9 },
  { :value => "3000", :explanation => "why me ", :created_at => "2013-06-26 13:24:33", :updated_at => "2013-06-26 13:24:33", :article_component_id => 9 }
], :without_protection => true )


