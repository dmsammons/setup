tunnel ()
{
    [ f$2 != f ] && export inst=$2
    ssh -g -N -L $1:127.0.0.1:$1 $USER@$inst
}

source ~/common_profile.sh
