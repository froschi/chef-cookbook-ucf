packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    ucf
  /
when "precise"
  packages |= %w/
    ucf
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
