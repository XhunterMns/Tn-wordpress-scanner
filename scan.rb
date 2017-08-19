#!/usr/bin/env ruby
#coded by Xhunter Mns and Dr.VIP | code for palestin |
system'reset'
puts"%%%%%%%%%%%  %%%      %%%    %%%%               %%%%  %%%%%%      %%%%%%%%%     %%%%%%%%%   %%%%%%%    %%%%      %%%"
puts"%          % %  %     % %    %   %      %%      %   % %      %   %         %   %        %  %        %  %   %     % %"
puts"%%%%   %%%%% %   %    % %     %   %    %  %    %   %  % %%%   %  %    %%%%  %  %  %%%%%%%  %  %%%   %  %    %    % %"
puts"   %   %     % %  %   % %      %   %  %    %  %   %   %      %    %   %   %%%  %  %        %  %%%   %  %     %   % %"
puts"   %   %     % % % %  % % %%%%% %   %%      %%   %    %   % %      %   %       %  %        %        %  %  %%  %  % %"
puts"   %   %     % %  % % % % %%%%%  %              %     %   %         %   %      %  %        %  %%%%  %  %  % %  % % %"
puts"   %   %     % %   % %% %         %            %      %   %     % %%%%   %     %  %%%%%%%  %  %  %  %  %  %  %  %% %"
puts"   %   %     % %    %   %          %    %%    %       %   %     %         %    %        %  %  %  %  %  %  %   %    %"
puts"   %%%%%     %%%     %%%            %%%%  %%%%        %%%%%      %%%%%%%%%%     %%%%%%%%%  %%%%  %%%%  %%%%    %%%%% v 1.0 "
puts""
puts""
puts "                                 [*] Fallaga Team Tunisian Cyber Resistance [*]     "
puts""
puts "                              "
puts""
puts""
puts ""
print "put your url here > "
print""
url = gets.chomp 
require 'net/http'
require 'colorize'
puts"target : #{url}".green
response = nil
puts""
puts "[~] Scanning for wpcontactcreativeform vuln ...".blue
Net::HTTP.start("#{url}", 80) {|http|
  response = http.head('wp-content/plugins/sexy-contact-form/includes/fileupload/index.php')
}
if response == "200"
then puts "[*] vuln wpcontactcreativeform found ".green
else puts "[-] vuln wpcontactcreativeform not found".red
end
puts""
puts "[~] Scanning for wplazyseoplugin vuln ...".blue
Net::HTTP.start("#{url}", 80) {|http|
  response = http.head('wp-content/plugins/lazy-seo/lazyseo.php')
  }
if response == "200"
then puts "[*] vuln wplazyseoplugin found ".green
else puts "[-] vuln wplazyseoplugin not found".red
end
puts""
puts "[~] Scanning for vuln wp-job-manager ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/')
  }

    if response.code == "200"
       then puts "[*] vuln wp-job-manager found ".green 
    else puts "[-] vuln wp-job-manager not found".red 
    end
puts""
puts "[~] Scanning for vuln  wpeasyupload ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/easy-comment-uploads/upload-form.php') #fix this one
  }

    if response.code == "200"
       then puts "[*] vuln wpeasyupload found ".green 
    else puts "[-] vuln wpeasyupload not found ".red 
    end

puts""
    puts "[~] Scanning for vuln wpstorethemeremotefileupload ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/themes/WPStore/upload/index.php')
  }

    if response.code == "200"
       then puts "[*] vuln wpstorethemeremotefileupload found ".green 
    else puts "[-] vuln wpstorethemeremotefileupload not found".red 
    end
puts""
    puts "[~] Scanning for vuln  wp-symposium ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-symposium/server/file_upload_form.php')
  }

    if response.code == "200"
       then puts "[*] vuln wp-symposium found ".green 
    else puts "[-] vuln wp-symposium not found".red 
    end
    

puts""
    puts "[~] Scanning for vuln  Multiple Plugins ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('//wp-content/plugins/server/images.php')
  }

    if response.code == "200"
       then puts "[*] vuln Multiple Plugins found ".green 
    else puts "[-] vuln Multiple Plugins not found".red 
    end
    
  puts""
    puts "[~] Scanning for vuln  cysteme finder ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/cysteme-finder/php/connector.php')
  }

    if response.code == "200"
       then puts "[*] vuln cysteme finder found ".green 
    else puts "[-] vuln cysteme finder not found".red 
    end
  puts""
    puts "[~] Scanning for vuln  WP vault LFI ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('wp-content/plugins/wp-vault/')
  }

    if response.code == "200"
       then puts "[*] vuln WP vault LFI found ".green 
    else puts "[-] vuln WP vault LFI not found".red 
    end
puts""
    puts "[~] Scanning for vuln  slider Templatic Tevolution ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/Tevolution/tmplconnector/monetize/templatic-custom_fields/single-upload.php') 
  }

    if response.code == "200"
       then puts "[*] slider Templatic Tevolution found ".green 
    else puts "[-] vuln slider Templatic Tevolution not found".red 
    end
puts""
    puts "[~] Scanning for vuln Wp Unauthenticated Content Injection ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/index.php/wp-json/wp/v2/posts/') 
  }

    if response.code == "200"
       then puts "[*] vuln Wp Unauthenticated Content Injection found ".green 
    else puts "[-] vuln Wp Unauthenticated Content Injection not found".red 
    end
puts""
    puts "[~] Scanning for vuln Memphis Document Library ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/memphis-documents-library/mdocs-downloads.php') 
  }

    if response.code == "200"
       then puts "[*] vuln Memphis Document Library found ".green 
    else puts "[-] vuln Wp Memphis Document Library not found".red 
    end
puts""
    puts "[~] Scanning for vuln IMDb Profile Widget LFI ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/imdb-widget') 
  }

    if response.code == "200"
       then puts "[*] vuln IMDb Profile Widget found ".green 
    else puts "[-] vuln Wp Memphis Document Library not found".red 
    end

puts""
    puts "[~] Scanning for vuln wp-photocart link ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/photocart-link/') 
  }

    if response.code == "200"
       then puts "[*] vuln wp-photocart link found ".green 
    else puts "[-] vuln  wp-photocart link not found".red 
    end

puts""
    puts "[~] Scanning for vuln Huge-IT Image Gallery ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('wp-content/plugins/gallery-images/gallery-images.php') 
  }

    if response.code == "200"
       then puts "[*] vuln IHuge-IT Image Gallery found ".green 
    else puts "[-] vuln Huge-IT Image Gallery not found".red 
    end
puts""
puts "[~] Scanning for vuln RB Agency LFD ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/rb-agency/ext/forcedownload.php') 
  }

    if response.code == "200"
       then puts "[*] vuln RB Agency found ".green 
    else puts "[-] vuln RB Agency not found".red 
    end
puts""
puts "[~] Scanning for vuln Theme Uncode ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/uploads/uncode-fonts/') 
  }

    if response.code == "200"
       then puts "[*] vuln Theme Uncode found ".green 
    else puts "[-] vuln Theme Uncode not found".red 
    end  
puts""
puts "[~] Scanning for vuln Mac photo gallery ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('wp-content/plugins/mac-dock-gallery/upload-file.php')
  }

    if response.code == "200"
       then puts "[*] vuln Mac photo gallery found ".green 
    else puts "[-] vuln Mac photo Gallery not found".red 
    end  

puts""
puts "[~] Scanning for vuln Membership Simplified ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/membership-simplified-for-oap-members-only/download.php')
  }

    if response.code == "200"
       then puts "[*] vuln Membership Simplified found ".green 
    else puts "[-] vuln Membership Simplified not found".red 
    end  

  puts""
puts "[~] Scanning for vuln Slider Templatic Tevolution...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/membership-simplified-for-oap-members-only/download.php')
  }

    if response.code == "200"
       then puts "[*] vuln Slider Templatic Tevolution found ".green 
    else puts "[-] vuln Slider Templatic Tevolution not found".red 
    end  

    puts""
puts "[~] Scanning for vuln Ultimate Product Catalog ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/ultimate-product-catalogue/')
  }

    if response.code == "200"
       then puts "[*] vuln Ultimate Product Catalog found ".green 
    else puts "[-] vuln Ultimate Product Catalog not found".red 
    end 

  puts""
puts "[~] Scanning for vuln WP Mobile Detector ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-includes/plugins/wp-mobile-detector')
  }

    if response.code == "200"
       then puts "[*] vuln WP Mobile Detector found ".green 
    else puts "[-] vuln WP Mobile Detector not found".red 
    end 

  
 puts"there is more wait For the Update".orange
