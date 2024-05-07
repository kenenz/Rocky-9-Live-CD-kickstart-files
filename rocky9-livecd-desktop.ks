# Desktop with customizationst to fit in a CD sized image (package removals, etc.)
# Maintained by the Fedora Desktop SIG:
# http://fedoraproject.org/wiki/SIGs/Desktop
# mailto:desktop@lists.fedoraproject.org

##
## This is the base file for the CD iso build.
## Additional files required are rocky9-live-desktop.ks and rocky9-live-base.ks
## File rocky9-live-minimization.ks has been removed
## Would like to condense it down to one kickstart file
## current package count is 1267

%include rocky9-live-desktop.ks

%packages

#######@gnome-desktop
@gnome-apps

@^workstation-product-environment

# FIXME; apparently the glibc maintainers dislike this, but it got put into the
# desktop image at some point.  We won't touch this one for now.
nss-mdns

@base-x
@base
@core
@fonts
@input-methods
# use a small pinyin db for live
-ibus-pinyin-db-open-phrase
##################################ibus-pinyin-db-android
#################################@admin-tools
###################################@printing

#################PACKAGES NOT YET TESTED BROADCOM ITEMS FOR MAC 
##broadcom-wl
##kmod-wl
##akmod-wl

#######################END





@dial-up
@hardware-support


# Explicitly specified here:
# <notting> walters: because otherwise dependency loops cause yum issues.
kernel

# This was added a while ago, I think it falls into the category of
# "Diagnosis/recovery tool useful from a Live OS image".  Leaving this untouched
# for now.
memtest86+

# The point of a live image is to install
anaconda
isomd5sum

# fpaste is very useful for debugging and very small
fpaste


%end

%post
%end
