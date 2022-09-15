# gha-clean-cache

## Description
Cleanup GHA cache based on key.

## Inputs
| Key          | Required | Default | Description                                 |
|--------------|----------|---------|---------------------------------------------|
| **key**      | **true** | `''`    | Cache key to delete.                        |
| **gh-token** | **true** | `''`    | Github Token with permission for API calls. |

## Outputs
**N/A**

### Example of step configuration and usage:
```yaml
steps:
  - name: 'Cleanup cache'
    uses: adore-me/gha-clean-cache@master
    with:
      key: SOME_KEY
      gh-token: ${{ secrets.GH_TOKEN }}
```
