
Facter.add(:uids_usernames) do
  setcode do
    passwd_values = File.open('/etc/passwd', 'r').map { |line| line.split ':', 4 } rescue return {}
    Hash[ passwd_values.map { |values| [ values[2].to_i, values[0] ] } ].sort
  end
end
