[@jl-org/tool](../README.md) / [Modules](../modules.md) / canvas

# Module: canvas

## Table of contents

### Type Aliases

- [CutImgOpts](canvas.md#cutimgopts)
- [HandleImgReturn](canvas.md#handleimgreturn)
- [Pixel](canvas.md#pixel)

### Functions

- [compressImg](canvas.md#compressimg)
- [createCvs](canvas.md#createcvs)
- [cutImg](canvas.md#cutimg)
- [fillPixel](canvas.md#fillpixel)
- [getCvsImg](canvas.md#getcvsimg)
- [getPixel](canvas.md#getpixel)
- [parseImgData](canvas.md#parseimgdata)

## Type Aliases

### CutImgOpts

Ƭ **CutImgOpts**: `Object`

#### Type declaration

| Name | Type | Description |
| :------ | :------ | :------ |
| `height?` | `number` | - |
| `mimeType?` | `string` | 图片的 MIME 格式 |
| `quality?` | `number` | 图像质量，取值范围 0 ~ 1 |
| `scaleX?` | `number` | - |
| `scaleY?` | `number` | - |
| `width?` | `number` | - |
| `x?` | `number` | - |
| `y?` | `number` | - |

#### Defined in

[src/canvas/imgHandle.ts:99](https://github.com/beixiyo/jl-tool/blob/45e2229/src/canvas/imgHandle.ts#L99)

___

### HandleImgReturn

Ƭ **HandleImgReturn**\<`T`\>: `T` extends ``"blob"`` ? `Blob` : `string`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `TransferType` |

#### Defined in

[src/canvas/imgHandle.ts:94](https://github.com/beixiyo/jl-tool/blob/45e2229/src/canvas/imgHandle.ts#L94)

___

### Pixel

Ƭ **Pixel**: [R: number, G: number, B: number, A: number]

#### Defined in

[src/types/base.ts:10](https://github.com/beixiyo/jl-tool/blob/45e2229/src/types/base.ts#L10)

## Functions

### compressImg

▸ **compressImg**\<`T`\>(`img`, `resType?`, `quality?`, `mimeType?`): `Promise`\<[`HandleImgReturn`](canvas.md#handleimgreturn)\<`T`\>\>

压缩图片

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `TransferType` = ``"base64"`` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `img` | `HTMLImageElement` | `undefined` | 图片 |
| `resType` | `T` | `undefined` | 需要返回的文件格式，默认 `base64` |
| `quality` | `number` | `.5` | 压缩质量，默认 0.5 |
| `mimeType` | ``"image/jpeg"`` \| ``"image/webp"`` | `'image/webp'` | 图片类型，默认 `image/webp`。`image/jpeg \| image/webp` 才能压缩 |

#### Returns

`Promise`\<[`HandleImgReturn`](canvas.md#handleimgreturn)\<`T`\>\>

base64 | blob

#### Defined in

[src/canvas/imgHandle.ts:47](https://github.com/beixiyo/jl-tool/blob/45e2229/src/canvas/imgHandle.ts#L47)

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

[src/canvas/tools.ts:11](https://github.com/beixiyo/jl-tool/blob/45e2229/src/canvas/tools.ts#L11)

___

### cutImg

▸ **cutImg**\<`T`\>(`img`, `opts?`, `resType?`): `Promise`\<[`HandleImgReturn`](canvas.md#handleimgreturn)\<`T`\>\>

截取图片指定区域，可设置缩放，返回 base64 | blob

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `TransferType` = ``"base64"`` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `img` | `HTMLImageElement` | 图片 |
| `opts` | [`CutImgOpts`](canvas.md#cutimgopts) | 配置 |
| `resType` | `T` | 需要返回的文件格式，默认 `base64` |

#### Returns

`Promise`\<[`HandleImgReturn`](canvas.md#handleimgreturn)\<`T`\>\>

#### Defined in

[src/canvas/imgHandle.ts:11](https://github.com/beixiyo/jl-tool/blob/45e2229/src/canvas/imgHandle.ts#L11)

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

[src/canvas/tools.ts:70](https://github.com/beixiyo/jl-tool/blob/45e2229/src/canvas/tools.ts#L70)

___

### getCvsImg

▸ **getCvsImg**\<`T`\>(`cvs`, `resType?`, `mimeType?`, `quality?`): `Promise`\<[`HandleImgReturn`](canvas.md#handleimgreturn)\<`T`\>\>

把 canvas 上的图像转成 base64 | blob

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `TransferType` = ``"base64"`` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `cvs` | `HTMLCanvasElement` | canvas |
| `resType` | `T` | 需要返回的文件格式，默认 `base64` |
| `mimeType?` | `string` | 图片的 MIME 格式 |
| `quality?` | `number` | 压缩质量 |

#### Returns

`Promise`\<[`HandleImgReturn`](canvas.md#handleimgreturn)\<`T`\>\>

#### Defined in

[src/canvas/imgHandle.ts:66](https://github.com/beixiyo/jl-tool/blob/45e2229/src/canvas/imgHandle.ts#L66)

___

### getPixel

▸ **getPixel**(`x`, `y`, `imgData`, `width`): [`Pixel`](canvas.md#pixel)

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

[`Pixel`](canvas.md#pixel)

`RGBA`数组

#### Defined in

[src/canvas/tools.ts:29](https://github.com/beixiyo/jl-tool/blob/45e2229/src/canvas/tools.ts#L29)

___

### parseImgData

▸ **parseImgData**(`imgData`, `width`, `height`): [`Pixel`](canvas.md#pixel)[][]

美化 ctx.getImageData.data 属性  
每一行为一个大数组，每个像素点为一个小数组

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `imgData` | `Uint8ClampedArray` | ctx.getImageData 方法获取的 ImageData 对象的 data 属性 |
| `width` | `number` | 图像区域宽度 |
| `height` | `number` | - |

#### Returns

[`Pixel`](canvas.md#pixel)[][]

#### Defined in

[src/canvas/tools.ts:53](https://github.com/beixiyo/jl-tool/blob/45e2229/src/canvas/tools.ts#L53)
