class Contact

  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note

  @@contacts = []
  @@id = 1000

  # This method should initialize the contact's attributes
  def initialize (first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1

  end

  # This method should call the initializer, 
  # store the newly created contact, and then return it
  def self.create (first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact

  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    # puts "$$$$" * 20
    # puts @@contacts
    # @@contacts.each do |contact|
    #   puts contact.id
    #   if contact.id == id.to_i
    #     return contact
    #   else
    #     return "Couldn't find that contact by ID"
    #   end
    # end
    @@contacts.each { |contact| return contact if contact.id == id }
  end

  # This method should allow you to specify 
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
 def update(update_choice, new_value)
    if update_choice == 1
       @first_name = new_value
    elsif update_choice == 2
        @last_name = new_value
    elsif update_choice == 3
        @email = new_value
    elsif update_choice == 4
        @note = new_value
    end
  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
def self.find_by(attribute, value)

  contacts = []

  case attribute

    when "first_name" then
      contacts = @@contacts.select { |contact| contact.first_name == value }
    when "last_name" then
      contacts = @@contacts.select { |contact| contact.last_name == value }
    when "email" then
      contacts = @@contacts.select { |contact| contact.email == value }
    when "note" then
      contacts = @@contacts.select { |contact| contact.note == value }
    else
      puts "Please choose one of the listed values"

  end    

  return contacts[0]
    # #get user input
    # puts "Do you want to search by first name (first), last name (last), email (email), or notes (note)?"
    # att_find_by = gets.chomp!
    # puts "What is the value of that attribute? (jon? sam@email.com? \'cool dude\'?)"
    # val_find_by = gets.chomp!

    #find the value
    

    
  end

  # This method should delete all of the contacts
  def self.delete_all
      @@contacts.clear
      @@id = 1000
  end

  def full_name
      "#{@first_name} #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.delete(self)
  end

  # Feel free to add other methods here, if you need them.
end 