cask 'jabra-direct' do
  version '4.0.6206'
  sha256 'c89807ede6d1bfd314a377898ea5c2e0ab9991e5b39f6da260c1e4441ea3d659'

  # jabraxpressonlineprdstor.blob.core.windows.net/jdo was verified as official when first introduced to the cask
  url 'https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.dmg'
  appcast 'https://jabraexpressonlinejdo.jabra.com/jdo/jdo.json'
  name 'Jabra Direct'
  homepage 'https://www.jabra.com/software-and-services/jabra-direct'

  pkg 'JabraDirectSetup.pkg'

  uninstall quit:       [
                          'com.jabra.Avaya3Driver',
                          'com.jabra.AvayaDriver',
                          'com.jabra.BriaDriver',
                          'com.jabra.directonline.*',
                          'com.jabra.softphoneService',
                          'nl.superalloy.oss.terminal-notifier',
                        ],
            login_item: 'Jabra Direct',
            pkgutil:    'com.jabra.directonline',
            delete:     '/Applications/Jabra Direct.app'

  zap trash: [
               '~/Library/Application Support/Jabra',
               '~/Library/Application Support/Jabra Direct',
               '~/Library/Application Support/JabraSDK',
               '~/Library/Logs/Jabra Direct',
               '~/Library/Preferences/com.jabra.directonline.helper.plist',
               '~/Library/Preferences/com.jabra.directonline.plist',
               '~/Library/Preferences/com.jabra.prefsettings.plist',
               '~/Library/Saved Application State/com.jabra.directonline.savedState',
             ]
end
