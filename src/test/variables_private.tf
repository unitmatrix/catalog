variable "default_variant" {
  type        = string
  description = "The variant to use."
  default     = "base"

  validation {
    condition = (
      contains(["base", "overlay"], var.default_variant)
    )
    error_message = "Valid values for `default_variant` are `base` or `overlay`."
  }
}
