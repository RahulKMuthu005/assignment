resource "aws_iam_user" "user" {
  name  = var.username
}

resource "aws_iam_group" "group" {
  name = var.groupname
}

resource "aws_iam_group_membership" "usergroup" {
  name = "group-membership"

  users = [
    aws_iam_user.user.name
  ]

  group = aws_iam_group.group.name
}


resource "aws_iam_policy" "policy" {
  name        = var.policyname
  policy      = "${file("policy.json")}"
}

resource "aws_iam_role" "iam_role" {
  name = var.rolename
  assume_role_policy = "${file("trust-policy.json")}"
}


resource "aws_iam_group_policy_attachment" "attach-policy" {
  group      = aws_iam_group.group.name
  policy_arn = aws_iam_policy.policy.arn
}
