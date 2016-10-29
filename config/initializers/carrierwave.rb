CarrierWave.configure do |config|
config.fog_credentials = {

    :provider                         => 'Google',
    :google_storage_access_key_id     => "GOOGSONVMNRE3PIC2F7D",
    :google_storage_secret_access_key => "rkPF/COYhgdSNfv6ZHBi7fOjhifMcm+vg2+3PJNS"

    }

    config.fog_directory = 'tutos_unal_storage'
end