function guest-cmf-config()
{
    CURRENT_FOLDER=${PWD##*/}
    if [[ "cmf" != $CURRENT_FOLDER ]]; then
        __fatal "You are not on the CMF folder."
        exit 1
    fi

    git checkout config

    patch   --no-backup-if-mismatch \
            --ignore-whitespace \
            --strip=0 \
            --input=/Users/eduardo.fernandes/Things/.myNotes/library/Work/Guestcentric/Notes/cmfConfig.diff

    find . '(' \
        -name \*-baseline -o \
        -name \*-merge -o \
        -name \*-original -o \
        -name \*.orig -o \
        -name \*.rej \
    ')' -delete

    # git update-index --no-assume-unchanged config/agilysys.ini
    # git update-index --no-assume-unchanged config/booking.ini
    # git update-index --no-assume-unchanged config/erevmax.ini
    # git update-index --no-assume-unchanged config/genares.ini
    # git update-index --no-assume-unchanged config/inntenderpms.ini
    # git update-index --no-assume-unchanged config/mail.ini
    # git update-index --no-assume-unchanged config/main.ini
    # git update-index --no-assume-unchanged config/parityrate.ini
    # git update-index --no-assume-unchanged config/pricematchpms.ini
    # git update-index --no-assume-unchanged config/rentalsunited.ini
    # git update-index --no-assume-unchanged config/siteconnect.ini
    # git update-index --no-assume-unchanged config/siteconnectapac.ini
    # git update-index --no-assume-unchanged config/siteconnectchannels.ini
    # git update-index --no-assume-unchanged config/siteconnectchannelsapac.ini
    # git update-index --no-assume-unchanged config/siteconnectrewards.ini
    # git update-index --no-assume-unchanged config/siteconnectrewardsapac.ini
    # git update-index --no-assume-unchanged config/siteminder.ini
    # git update-index --no-assume-unchanged config/skyware.ini
}
