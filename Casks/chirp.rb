cask :v1 => 'chirp' do
  version '0.4.0'
  sha256 '76842b583f0dbb19cd700a156893b0cd1356dde18bbe730261fdf786772a26f0'

  url "http://chirp.danplanet.com/download/#{version}/chirp-#{version}.app.zip"
  homepage 'http://chirp.danplanet.com/'
  license :gpl

  app "chirp-#{version}.app"

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} also requires the KK7DS Python Runtime as described at

      http://chirp.danplanet.com/projects/chirp/wiki/Download#CHIRP-Downloads
  EOS
end
