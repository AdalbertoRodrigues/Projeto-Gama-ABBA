variable key_pair_name {
  type        = string
  default     = "dev-turma3-adalberto"
}

variable ami_ABBA {
  type        = string
  default     = "ami-0305513907eeb7a98"
}

variable subnet-az-a {
  type        = string
  default     = "subnet-0e8f392219ff33c64"
}
# variable subnet-az-b {
#   type        = string
#   default     = "subnet-03fa0e215fefcd964"
# }
# variable subnet-az-c {
#   type        = string
#   default     = "subnet-0b81c1e8e51aebeee"
# }

variable vpc_id {
  type        = string
  default     = "vpc-07cb5bd154e98fe7e"
  description = "description"
}

variable meu_nome {
  type        = string
  default     = "ABBA"
  description = "Adicionar seu nome"
}
