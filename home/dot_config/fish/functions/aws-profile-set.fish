function aws-profile-set
  set -gx AWS_PROFILE $argv[1]
  aws iam list-account-aliases &> /dev/null || aws sso login
end

complete -c aws-profile-set -f -a "(aws configure list-profiles | string split '\n')"
