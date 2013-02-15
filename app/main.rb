


require_relative 'models/congress_member.rb'
require_relative 'models/state.rb'
require_relative 'models/party.rb'
all_members = CongressMember.all
CongressMember.where(:state, "HI")
state_senate_members = CongressMember.where(:state => "HI", :title => "Sen")
state_house_members = CongressMember.where(:state => "HI", :title => "Rep")
puts "Senators"
state_senate_members.each do |state_member|
	puts "#{state_member.first_name} #{state_member.last_name} (#{state_member.party})"
end
puts ""
puts "Representatives:"
state_house_members.each do |state_house_member|
	puts "#{state_house_member.first_name} #{state_house_member.last_name} (#{state_house_member.party})"
end
CongressMember.where(:party => "D", :title => "Sen")
CongressMember.where(:party => "D", :title => "Rep")

puts ""

males = CongressMember.where(:gender => "M")
females = CongressMember.where(:gender => "F")
puts "Male Senators: #{males.length} #{(males.length.to_f/all_members.length.to_f)*100}%"
puts "Female Senators: #{females.length} #{(females.length.to_f/all_members.length.to_f)*100}%"

puts ""
total_senators = CongressMember.where(:title => "Sen").length
total_reps = CongressMember.where(:title => "Rep").length
puts "Senators #{total_senators}"
puts "Representatives #{total_reps}"

CongressMember.where(:in_office => '0').destroy_all

puts ""


total_senators2 = CongressMember.where(:title => "Sen").length
total_reps2 = CongressMember.where(:title => "Rep").length
puts "Senators #{total_senators2}"
puts "Representatives #{total_reps2}"



