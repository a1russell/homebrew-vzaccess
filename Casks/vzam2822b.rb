class Vzam2822b < Cask
  version '7.10.0.1'
  sha256 'f1fe556357321d40b7b48294cbe362d45330aa5edafe5b66d6c0e85e54416f82'

  url 'http://pcdn2-download.vzw.com/mac/7.4/VZAM_7.4.6_2825c.dmg'
  homepage 'http://www.vzam.net/'

  install 'VZAccess Manager.pkg'

  uninstall({
    quit: [
      'com.smithmicro.VZAccessManager',
      'com.smithmicro.vzwwirelessd'
    ],
    launchctl: [
      'com.smithmicro.vzwwirelessd',
      'com.smithmicro.VZAccessManager'
    ],
    kext: [
      'com.lge.driver.LGEMobilSolutionFamily',
      'com.lge.driver.LGELTEBus',
      'com.lge.driver.LGELTEMdmControl',
      'com.lge.driver.LGELTEMdmData',
      'com.lge.driver.LGELTENicControl',
      'com.lge.driver.LGELTENicData',
      'com.novatelwireless.kext.wwan',
      'com.novatelwireless.driver.3G',
      'com.novatelwireless.driver.3GData',
      'com.novatelwireless.driver.DisableAutoInstall',
      'com.NovatelWireless.driver.NovatelWirelessUSBCDCECMControl',
      'com.NovatelWireless.driver.NovatelWirelessUSBCDCECMData',
      'com.pantech.driver.PTRayUSBFamily',
      'com.pantech.driver.PantechBus',
      'com.pantech.driver.PantechCDFree',
      'com.pantech.driver.PantechCm',
      'com.pantech.driver.PantechMdmControl',
      'com.pantech.driver.PantechMdmData',
      'com.pantech.driver.PantechSer',
      'com.pantech.driver.QmiDriver',
      'com.vaultmicro.driver.PTUMWDrv',
      'com.vaultmicro.driver.PTUMWCDFree',
      'com.vaultmicro.driver.PTUMWCSP',
      'com.vaultmicro.driver.PTUMWDIAG',
      'com.vaultmicro.driver.PTUMWMdmControl',
      'com.vaultmicro.driver.PTUMWMdmData',
      'com.vaultmicro.driver.PTUMWUSBMergeNub',
      'com.smithmicro.driver.SMSIWirelessModem',
      'com.smithmicro.driver.SMSIWirelessCDC',
      'com.smithmicro.driver.SMSIWirelessSerial',
      'com.sierrawireless.driver.SierraDevSupport',
      'com.sierrawireless.driver.SierraFSCSupport',
      'com.sierrawireless.driver.SierraFSRSupport',
      'com.sierrawireless.driver.SierraHSRSupport',
      'com.ZTE.driver.ZTEUSBCDCACMData'
    ],
    pkgutil: 'com.smithmicro.VZAccessManager.pkg',
  })

  caveats do
    reboot
  end
end
