function aws-region-set
  set -gx AWS_REGION $argv[1]
  echo "AWS_REGION set to $AWS_REGION"
end

complete -c aws-region-set -f -a "us-east-1 us-east-2"
