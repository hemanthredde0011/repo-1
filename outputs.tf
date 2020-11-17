output "Instance" {
   value = aws_security_group.Instance.id
}

output "Indexer" {
   value = aws_security_group.Indexer.id
}

output "DM" {
   value = aws_security_group.DM.id
}

output "SH" {
   value = aws_security_group.SH.id
}

output "CM" {
   value = aws_security_group.CM.id
}