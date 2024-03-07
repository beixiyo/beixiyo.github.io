[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/color

# Module: tools/color

## Table of contents

### Functions

- [colorAddOpacity](tools_color.md#coloraddopacity)
- [getColor](tools_color.md#getcolor)
- [getColorArr](tools_color.md#getcolorarr)
- [hexColorToRaw](tools_color.md#hexcolortoraw)
- [hexToRGB](tools_color.md#hextorgb)
- [lightenColor](tools_color.md#lightencolor)
- [rgbToHex](tools_color.md#rgbtohex)

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

tools/color.ts:120

___

### getColor

▸ **getColor**(): `string`

获取十六进制随机颜色

#### Returns

`string`

#### Defined in

tools/color.ts:6

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

tools/color.ts:11

___

### hexColorToRaw

▸ **hexColorToRaw**(`color`): `string` \| `void`

### 把十六进制颜色转成 原始长度的颜色
  - #000 => #000000
  - #000f => #000000ff

#### Parameters

| Name | Type |
| :------ | :------ |
| `color` | `string` |

#### Returns

`string` \| `void`

#### Defined in

tools/color.ts:22

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

tools/color.ts:41

___

### lightenColor

▸ **lightenColor**(`color`, `strength?`): `string` \| `void`

淡化颜色透明度 支持`rgb`和十六进制

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `color` | `string` | `undefined` | rgba(0, 239, 255, 1) |
| `strength` | `number` | `0` | 淡化的强度 |

#### Returns

`string` \| `void`

返回 RGBA 类似如下格式的颜色 `rgba(0, 0, 0, 0.1)`

#### Defined in

tools/color.ts:91

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

tools/color.ts:64
