#!/usr/local/bin/ruby

##
# @file      checkHeader.rb
# @author    Mitch Richling <https://www.mitchr.me/>
# @Copyright Copyright 2007 by Mitch Richling.  All rights reserved.
# @brief     Do some simple top-comment checks.@EOL
# @Keywords  
# @Std       Ruby 1.8
#

if (ARGV[0]) then
  filesToCheck = ARGV
else
  filesToCheck = Dir.glob('*.rb')
end

filesToCheck.each do |fileName|
  open(fileName, "r") do |fileDes|
    foundFileLine = FALSE
    fileDes.each_line do |line|

      if(tmp=/^[#;!]*\s+@file\s+(.+)$/.match(line)) 
        foundFileLine = TRUE
        if (tmp[1].strip != File.basename(fileName)) then
          puts("ERROR(#{fileName}): Filename Mismatch: #{tmp[1].strip}")
        end
      end

      if(tmp=/^[#;!]*\s+@brief\s+(.+)$/.match(line)) 
        briefComment = tmp[1].strip.sub('@EOL', '')
        if(briefComment.empty?) 
          puts("ERROR(#{fileName}): No brief comment")
        end
          #printf("%-25s %s\n", fileName, briefComment)
      end

    end
    if ( !(foundFileLine)) then
      puts("ERROR(#{fileName}): No file name comment")
    end
  end
end
