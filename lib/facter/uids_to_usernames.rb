
Facter.add(:uids_usernames) do
  setcode do
    passwd_values = File.open('/etc/passwd', 'r').map { |line| line.split ':', 4 }
    Hash[ passwd_values.map { |values| [ values[0], values[2].to_i ] } ].sort
  end
end
