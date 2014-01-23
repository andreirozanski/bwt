#!/usr/bin/ruby
#
#Initial implementation of BWT algorithm
#
#Burrows–Wheeler transform - block-sorting compression
class Bwt

  def initialize;end
  #Transformation
  #@param String [String] Any given string
  #@return [String] String transformed.
  #| - start flag.
  #~ - end flag.
  def self.bwt(string)
    string2="|#{string}~"
    p string2
    len=string2.length
    m=[]
    (0...string2.length).collect { |i| (string2 * 2)[i, string2.length] }.each do |entry|
      arr=[]
      entry.split('').each do |letter|
        arr.push(letter)
      end
      m.push(arr)
    end
    a=m.sort
    b=[]
    a.each do |lt|
      b.push(lt[len-1])
    end
    return b.join('')
  end #bwt
  
  #Inverse Transformation
  #@param String [String] Inverse String
  #@return [Array] Array of letters - Original String
  def self.bwt_rev(string)
    len=string.length
    s1=""
    m=Array.new
    count = 0
    while count < len do
      if not m.any?
        string.split('').each do |s|
          s1=[s]
          m.push(s1)
          m.sort!
        end
        count += 1
      else
        val = 0
        string.split('').each do |s|
          m[val].insert(0,s)
          val += 1 
        end
        m.sort!
        count +=1
      end
    end
    m.each do |arr|
      if arr.last == "~"
        return arr
      end
    end
  end #bwt_rev
end # Bwt

#2Cor3:18
