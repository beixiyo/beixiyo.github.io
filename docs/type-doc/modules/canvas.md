[@jl-org/tool](../README.md) / [Modules](../modules.md) / canvas

# Module: canvas

## Table of contents

### Functions

- [calcCoord](canvas.md#calccoord)
- [compressImg](canvas.md#compressimg)
- [createCvs](canvas.md#createcvs)
- [cutImg](canvas.md#cutimg)
- [fillPixel](canvas.md#fillpixel)
- [getPixel](canvas.md#getpixel)
- [parseImgData](canvas.md#parseimgdata)

## Functions

### calcCoord

▸ **calcCoord**(`r`, `deg`): `number`[]

根据半径和角度获取坐标

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `r` | `number` | 半径 |
| `deg` | `number` | 角度 |

#### Returns

`number`[]

#### Defined in

canvas/tools.ts:10

___

### compressImg

▸ **compressImg**\<`T`\>(`img`, `resType`, `quality?`, `mimeType?`): `HandleImgReturn`\<`T`\>

压缩图片

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `TransferType` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `img` | `HTMLImageElement` | `undefined` | 图片 |
| `resType` | `T` | `undefined` | 需要返回的文件格式 |
| `quality` | `number` | `.5` | 压缩质量，默认 0.5 |
| `mimeType` | ``"image/jpeg"`` \| ``"image/webp"`` | `'image/webp'` | 图片类型，默认 `image/webp`。`image/jpeg \| image/webp` 才能压缩， |

#### Returns

`HandleImgReturn`\<`T`\>

base64 | blob

#### Defined in

canvas/imgHandle.ts:48

___

### createCvs

▸ **createCvs**(`width?`, `height?`, `options?`): `Object`

创建一个指定宽高的画布

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `width?` | `number` | 画布的宽度 |
| `height?` | `number` | 画布的高度 |
| `options?` | `CanvasRenderingContext2DSettings` | 上下文配置 |

#### Returns

`Object`

包含画布和上下文的对象

| Name | Type |
| :------ | :------ |
| `ctx` | `CanvasRenderingContext2D` |
| `cvs` | `HTMLCanvasElement` |

#### Defined in

canvas/tools.ts:25

___

### cutImg

▸ **cutImg**\<`T`\>(`img`, `resType`, `x?`, `y?`, `width?`, `height?`, `opts?`): `HandleImgReturn`\<`T`\>

截取图片的一部分，返回 base64 | blob

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `TransferType` |

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `img` | `HTMLImageElement` | `undefined` |
| `resType` | `T` | `undefined` |
| `x` | `number` | `0` |
| `y` | `number` | `0` |
| `width` | `number` | `img.width` |
| `height` | `number` | `img.height` |
| `opts` | `Object` | `{}` |
| `opts.quality?` | `number` | `undefined` |
| `opts.type?` | `string` | `undefined` |

#### Returns

`HandleImgReturn`\<`T`\>

#### Defined in

canvas/imgHandle.ts:7

___

### fillPixel

▸ **fillPixel**(`ctx`, `x`, `y`, `color`): `void`

给 canvas 某个像素点填充颜色的函数

#### Parameters

| Name | Type |
| :------ | :------ |
| `ctx` | `CanvasRenderingContext2D` |
| `x` | `number` |
| `y` | `number` |
| `color` | `string` |

#### Returns

`void`

#### Defined in

canvas/tools.ts:83

___

### getPixel

▸ **getPixel**(`x`, `y`, `imgData`, `width`): `Pixel`

取出`canvas`用一维数组描述的颜色中 某个坐标的`RGBA`数组  
注意坐标从 0 开始

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `x` | `number` | 宽度中的第几列 |
| `y` | `number` | 高度中的第几行 |
| `imgData` | `Uint8ClampedArray` | ctx.getImageData 方法获取的 ImageData 对象的 data 属性 |
| `width` | `number` | 图像区域宽度 |

#### Returns

`Pixel`

`RGBA`数组

#### Defined in

canvas/tools.ts:43

___

### parseImgData

▸ **parseImgData**(`imgData`, `width`, `height`): `number`[][][]

美化 ctx.getImageData.data 属性  
每一行为一个大数组，每个像素点为一个小数组

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `imgData` | `Uint8ClampedArray` | ctx.getImageData 方法获取的 ImageData 对象的 data 属性 |
| `width` | `number` | 图像区域宽度 |
| `height` | `number` | - |

#### Returns

`number`[][][]

#### Defined in

canvas/tools.ts:66
