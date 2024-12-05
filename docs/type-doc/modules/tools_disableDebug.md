[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/disableDebug

# Module: tools/disableDebug

## Table of contents

### Type Aliases

- [DebugOpts](tools_disableDebug.md#debugopts)

### Functions

- [disableDebug](tools_disableDebug.md#disabledebug)

## Type Aliases

### DebugOpts

Ƭ **DebugOpts**: `Object`

#### Type declaration

| Name | Type | Description |
| :------ | :------ | :------ |
| `btnStyleText?` | `string` | 输入框按钮样式的 style.cssText |
| `btnText?` | `string` | 输入框按钮文本 **`Default`** ```ts '确定' ``` |
| `disableF12?` | `boolean` | 是否禁用 F12 按键 **`Default`** ```ts true ``` |
| `disableMenu?` | `boolean` | 是否禁用右键菜单 **`Default`** ```ts true ``` |
| `enable?` | `boolean` | 是否开启禁用调试，你可根据环境变量设置 **`Default`** ```ts true ``` |
| `inputStyleText?` | `string` | input 样式的 style.cssText |
| `key?` | `string` | 开发按键，例如传入 'd'，则按住 shift + d 键，可以输入密码打开调试 **`Default`** ```ts 'd' ``` |
| `labelText?` | `string` | 输入框 label 文本 **`Default`** ```ts '你想干什么？' ``` |
| `secret` | `string` | - |
| `wrapStyleText?` | `string` | 外层样式的 style.cssText |

#### Defined in

[src/tools/disableDebug.ts:170](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/disableDebug.ts#L170)

## Functions

### disableDebug

▸ **disableDebug**(`debugOpts`): `void`

禁用调试

#### Parameters

| Name | Type |
| :------ | :------ |
| `debugOpts` | [`DebugOpts`](tools_disableDebug.md#debugopts) |

#### Returns

`void`

**`Example`**

```ts
disableDebug({
  secret: '^sdf./][Cl32038df%……&*（）——+=',
})
```

#### Defined in

[src/tools/disableDebug.ts:13](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/disableDebug.ts#L13)
