[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/colorTools

# Module: tools/colorTools

## Table of contents

### Functions

- [colorAddOpacity](tools_colorTools.md#coloraddopacity)
- [getColor](tools_colorTools.md#getcolor)
- [getColorArr](tools_colorTools.md#getcolorarr)
- [hexColorToRaw](tools_colorTools.md#hexcolortoraw)
- [hexToRGB](tools_colorTools.md#hextorgb)
- [lightenColor](tools_colorTools.md#lightencolor)
- [rgbToHex](tools_colorTools.md#rgbtohex)

## Functions

### colorAddOpacity

▸ **colorAddOpacity**(`color`, `opacity?`): `string`

颜色添加透明度 支持`rgb`和十六进制

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `color` | `string` | `undefined` | 颜色 |
| `opacity` | `number` | `.1` | 透明度 |

#### Returns

`string`

返回十六进制 类似如下格式的颜色 `#ffffff11`

#### Defined in

tools/colorTools.ts:126

___

### getColor

▸ **getColor**(): `string`

获取十六进制随机颜色

#### Returns

`string`

#### Defined in

tools/colorTools.ts:6

___

### getColorArr

▸ **getColorArr**(`size`): `string`[]

随机十六进制颜色数组

#### Parameters

| Name | Type |
| :------ | :------ |
| `size` | `number` |

#### Returns

`string`[]

#### Defined in

tools/colorTools.ts:11

___

### hexColorToRaw

▸ **hexColorToRaw**(`color`): `string`

### 把十六进制颜色转成 原始长度的颜色
  - #000 => #000000
  - #000f => #000000ff

#### Parameters

| Name | Type |
| :------ | :------ |
| `color` | `string` |

#### Returns

`string`

#### Defined in

tools/colorTools.ts:22

___

### hexToRGB

▸ **hexToRGB**(`color`): `string`

十六进制 转 RGB

#### Parameters

| Name | Type |
| :------ | :------ |
| `color` | `string` |

#### Returns

`string`

#### Defined in

tools/colorTools.ts:42

___

### lightenColor

▸ **lightenColor**(`color`, `strength?`): `string`

淡化颜色透明度 支持`rgb`和十六进制

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `color` | `string` | `undefined` | rgba(0, 239, 255, 1) |
| `strength` | `number` | `0` | 淡化的强度 |

#### Returns

`string`

返回 RGBA 类似如下格式的颜色 `rgba(0, 0, 0, 0.1)`

#### Defined in

tools/colorTools.ts:93

___

### rgbToHex

▸ **rgbToHex**(`color`): `string`

rgb转十六进制

#### Parameters

| Name | Type |
| :------ | :------ |
| `color` | `string` |

#### Returns

`string`

#### Defined in

tools/colorTools.ts:66
