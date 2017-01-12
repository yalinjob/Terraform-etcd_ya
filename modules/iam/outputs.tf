# outputs
output "master_profile_name" {
  value = "${aws_iam_instance_profile.master_profile.id}"
}

output "master_role_arn" {
  value = "${aws_iam_role.master_role.arn}"
}

output "worker_profile_name" {
  value = "${aws_iam_instance_profile.worker_profile.id}"
}

output "worker_role_arn" {
  value = "${aws_iam_role.worker_role.arn}"
}
