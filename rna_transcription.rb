class Complement
  def self.of_dna(nucleotides)
    complement_dna = []
    nucleotides_arr = nucleotides.chars
    nucleotides_arr.each do |nucleotide|
    if nucleotide == "G"
      complement_dna << "C"
    elsif nucleotide == "C"
      complement_dna << "G"
    elsif nucleotide == "T"
      complement_dna << "A"
    elsif nucleotide == "A"
      complement_dna << "U"
    else
      raise "This is an invalid DNA letter"
    end
  end
    complement_dna.join
  end
def self.of_rna(nucleotides)
 if nucleotides == "T"
   raise "This is an invalid RNA letter"
 end
end
end
