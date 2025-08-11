# Entra ID (AzureAD) Groups

 This terraform module simplifies the creation and management of Entra ID Groups and its members or owners, all managed through code.

## Features

Capability to manage groups, and corresponding owners and / or members. 

Includes support for dynamic membership groups and M365 groups.

Utilization of terratest for robust validation.

<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->

## Goals

For more information, please see our [goals and non-goals](./GOALS.md).

## Testing

For more information, please see our testing [guidelines](./TESTING.md)

## Notes

Using a dedicated module, we've developed a naming convention for resources that's based on specific regular expressions for each type, ensuring correct abbreviations and offering flexibility with multiple prefixes and suffixes.

Full examples detailing all usages, along with integrations with dependency modules, are located in the examples directory.

To update the module's documentation run `make doc`

## Authors

Module is maintained by [these awesome contributors](https://github.com/cloudnationhq/terraform-azuread-groups/graphs/contributors).

## Contributors

We welcome contributions from the community! Whether it's reporting a bug, suggesting a new feature, or submitting a pull request, your input is highly valued.

For more information, please see our contribution [guidelines](./CONTRIBUTING.md). <br><br>

<a href="https://github.com/cloudnationhq/terraform-azuread-groups/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=cloudnationhq/terraform-azuread-groups" />
</a>

## License

MIT Licensed. See [LICENSE](./LICENSE) for full details.

## References

- [Documentation](https://learn.microsoft.com/en-us/entra/fundamentals/concept-learn-about-groups)
- [Rest Api](https://learn.microsoft.com/en-us/graph/api/resources/groups-overview)
