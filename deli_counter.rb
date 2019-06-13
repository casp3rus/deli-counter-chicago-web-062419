katz_deli = []
def line(katz_deli)
  if katz_deli.length == 0 
    puts "The line is currently empty."
  else 
    puts "The line is currently: #{katz_deli}"
  end
end

#     context "adding multiple people in a row" do
#       it "should correctly build the line" do
#         take_a_number(katz_deli, "Ada")
#         take_a_number(katz_deli, "Grace")
#         take_a_number(katz_deli, "Kent")
#         expect(katz_deli).to eq(%w(Ada Grace Kent))
#       end
#     end
#   end


def take_a_number(katz_deli, name)
    katz_deli = katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

# describe "#now_serving" do
#     context "there are people in line" do
#       it "should serve the first person in line and remove them from the queue" do
#         expect($stdout).to receive(:puts).with("Currently serving Logan.")
#         now_serving(other_deli)
#         expect(other_deli).to eq(%w(Avi Spencer))
#       end
#     end
#   end

def now_serving(katz_deli)
  if katz_deli.length == 0 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
    katz_deli = katz_deli.shift
  end
  
end
