[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/colorTools

# Module: tools/colorTools

## Table of contents

### Functions

- [colorAddOpacity](tools_colorTools.md#coloraddopacity)
- [getColor](tools_colorTools.md#getcolor)
- [getColorArr](tools_colorTools.md#getcolorarr)
- [getColorInfo](tools_colorTools.md#getcolorinfo)
- [hexColorToRaw](tools_colorTools.md#hexcolortoraw)
- [hexToRGB](tools_colorTools.md#hextorgb)
- [lightenColor](tools_colorTools.md#lightencolor)
- [rgbToHex](tools_colorTools.md#rgbtohex)

## Functions

### colorAddOpacity

▸ **colorAddOpacity**(`color`, `opacity?`): `string`

颜色添加透明度，支持 `RGB` 和 `十六进制`

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `color` | `string` | `undefined` | 颜色 |
| `opacity` | `number` | `.1` | 透明度 |

#### Returns

`string`

返回十六进制 类似如下格式的颜色 `#ffffff11`

#### Defined in

[src/tools/colorTools.ts:166](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/colorTools.ts#L166)

___

### getColor

▸ **getColor**(): `string`

获取十六进制随机颜色

#### Returns

`string`

#### Defined in

[src/tools/colorTools.ts:47](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/colorTools.ts#L47)

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

[src/tools/colorTools.ts:52](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/colorTools.ts#L52)

___

### getColorInfo

▸ **getColorInfo**(`color`): `Object`

把颜色提取出 RGBA

#### Parameters

| Name | Type |
| :------ | :------ |
| `color` | `string` |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `a` | `number` |
| `b` | `number` |
| `g` | `number` |
| `r` | `number` |

**`Example`**

```ts
getColorInfo('rgba(0, 0, 0, 1)')
getColorInfo('rgb(0, 0, 0)')

getColorInfo('#fff')
getColorInfo('#fff1')
```

#### Defined in

[src/tools/colorTools.ts:16](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/colorTools.ts#L16)

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

[src/tools/colorTools.ts:63](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/colorTools.ts#L63)

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

[src/tools/colorTools.ts:83](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/colorTools.ts#L83)

___

### lightenColor

▸ **lightenColor**(`color`, `strength?`): `string`

淡化颜色透明度，支持 `RGB` 和 `十六进制`

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `color` | `string` | `undefined` | rgba(0, 239, 255, 1) |
| `strength` | `number` | `0` | 淡化的强度 |

#### Returns

`string`

返回 RGBA 类似如下格式的颜色 `rgba(0, 0, 0, 0.1)`

#### Defined in

[src/tools/colorTools.ts:133](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/colorTools.ts#L133)

___

### rgbToHex

▸ **rgbToHex**(`color`): `undefined` \| `string`

RGB 转十六进制

#### Parameters

| Name | Type |
| :------ | :------ |
| `color` | `string` |

#### Returns

`undefined` \| `string`

#### Defined in

[src/tools/colorTools.ts:106](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/colorTools.ts#L106)
