class Race < ActiveRecord::Base
	has_many :characters

	def modifiers
		abilities = {"STR" => self.str_adjust,"CON" => self.con_adjust, "DEX" => self.dex_adjust,"INT" => self.int_adjust,"WIS" => self.wis_adjust, "CHR" => self.chr_adjust}
		abilities.reject! {|key,value| value == 0 || value == nil }
		mods = []
		abilities.each do |key,value|
			mods << "#{key}: #{value}"
		end
		return mods
	end
end
