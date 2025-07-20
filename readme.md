Incomplete lua language server typing for Balatro

## Installation

1. Install lua language server (see [guide](https://luals.github.io/#vscode-install))

2. Install love2d's language pack through addons manager (see [guide](https://luals.github.io/wiki/addons/#enabling-addons))

3. Clone / download the repo to your workspace

    - If you `.gitignore` the folder, you'll need to include the folder in `workspace.library` configuration

    - if you decided to put it outside of your workspace, include the lsp's folder in  `workspace.library` configuration (`Lua.workspace.library` on VSCode's `.vscode/settings.json`).

## Todo

- Add & improve typing descriptions for:
    - [`localize`](functions/misc_functions.lua#L442)
    - [`Game`](game)
    - [functions/UI_definitions.lua](functions/UI_definitions.lua)
    - [`Card_Character`](card_character.lua)

- Verify all typings work with source