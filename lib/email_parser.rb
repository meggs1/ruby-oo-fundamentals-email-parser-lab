# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
attr_accessor :emails
    def initialize(emails)
        @emails = emails
    end

    def parse
        split_email = emails.split.collect { |email| email.split(",")}
        new_array = split_email.flatten.uniq
        new_array
    end

end