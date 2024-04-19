[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/domTools

# Module: tools/domTools

## Table of contents

### Functions

- [HTMLToStr](tools_domTools.md#htmltostr)
- [adaptPx](tools_domTools.md#adaptpx)
- [blobToBase64](tools_domTools.md#blobtobase64)
- [copyToClipboard](tools_domTools.md#copytoclipboard)
- [debounce](tools_domTools.md#debounce)
- [doubleKeyDown](tools_domTools.md#doublekeydown)
- [downloadByData](tools_domTools.md#downloadbydata)
- [downloadByUrl](tools_domTools.md#downloadbyurl)
- [fullScreen](tools_domTools.md#fullscreen)
- [getAllStyle](tools_domTools.md#getallstyle)
- [getImg](tools_domTools.md#getimg)
- [getLocalStorage](tools_domTools.md#getlocalstorage)
- [getSelectedText](tools_domTools.md#getselectedtext)
- [getStyle](tools_domTools.md#getstyle)
- [getWinHeight](tools_domTools.md#getwinheight)
- [getWinWidth](tools_domTools.md#getwinwidth)
- [handleCssUnit](tools_domTools.md#handlecssunit)
- [isDarkMode](tools_domTools.md#isdarkmode)
- [isToBottom](tools_domTools.md#istobottom)
- [judgeImgLoad](tools_domTools.md#judgeimgload)
- [matchProtocol](tools_domTools.md#matchprotocol)
- [print](tools_domTools.md#print)
- [pxToVw](tools_domTools.md#pxtovw)
- [setLocalStorage](tools_domTools.md#setlocalstorage)
- [setParentOverflow](tools_domTools.md#setparentoverflow)
- [throttle](tools_domTools.md#throttle)

## Functions

### HTMLToStr

▸ **HTMLToStr**(`HTMLStr`): `string`

解析出`HTML`的所有字符串

#### Parameters

| Name | Type |
| :------ | :------ |
| `HTMLStr` | `string` |

#### Returns

`string`

#### Defined in

tools/domTools.ts:369

___

### adaptPx

▸ **adaptPx**(`px`, `designSize?`, `type?`): `string`

根据原始设计稿宽度 等比例转换大小

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `px` | `string` \| `number` | `undefined` | 像素大小 |
| `designSize` | `number` | `1920` | 设计稿大小 默认`1920` |
| `type` | ``"width"`` \| ``"height"`` | `'width'` | 根据什么缩放 默认是宽度 |

#### Returns

`string`

#### Defined in

tools/domTools.ts:67

___

### blobToBase64

▸ **blobToBase64**(`blob`): `Promise`\<`string`\>

Blob 转 Base64

#### Parameters

| Name | Type |
| :------ | :------ |
| `blob` | `Blob` |

#### Returns

`Promise`\<`string`\>

#### Defined in

tools/domTools.ts:280

___

### copyToClipboard

▸ **copyToClipboard**(`text`): `Promise`\<`void`\>

文本复制到剪贴板

#### Parameters

| Name | Type |
| :------ | :------ |
| `text` | `string` |

#### Returns

`Promise`\<`void`\>

#### Defined in

tools/domTools.ts:177

___

### debounce

▸ **debounce**\<`P`, `T`, `R`\>(`fn`, `delay?`): (`this`: `T`, ...`args`: `P`) => `void`

防抖

#### Type parameters

| Name | Type |
| :------ | :------ |
| `P` | extends `any`[] |
| `T` | `T` |
| `R` | `R` |

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `fn` | (`this`: `T`, ...`args`: `P`) => `R` | `undefined` |
| `delay` | `number` | `200` |

#### Returns

`fn`

▸ (`this`, `...args`): `void`

##### Parameters

| Name | Type |
| :------ | :------ |
| `this` | `T` |
| `...args` | `P` |

##### Returns

`void`

#### Defined in

tools/domTools.ts:145

___

### doubleKeyDown

▸ **doubleKeyDown**\<`T`, `P`, `R`\>(`code`, `fn`, `gap?`): (`e`: `KeyboardEvent`) => `R`

返回一个双击键盘事件

#### Type parameters

| Name |
| :------ |
| `T` |
| `P` |
| `R` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `code` | `KeyCode` | `undefined` | 上下左右 |
| `fn` | (`this`: `T`, ...`args`: `P`[]) => `R` | `undefined` | 双击后执行函数 |
| `gap` | `number` | `150` | 间隔时间 |

#### Returns

`fn`

▸ (`e`): `R`

##### Parameters

| Name | Type |
| :------ | :------ |
| `e` | `KeyboardEvent` |

##### Returns

`R`

#### Defined in

tools/domTools.ts:297

___

### downloadByData

▸ **downloadByData**(`data`, `filename`): `void`

根据 `Blob` 下载

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `data` | `Blob` | 数据 |
| `filename` | `string` | 文件名 |

#### Returns

`void`

#### Defined in

tools/domTools.ts:29

___

### downloadByUrl

▸ **downloadByUrl**(`url`, `fileName`): `Promise`\<`void`\>

用cdn链接下载

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `url` | `string` | 链接 |
| `fileName` | `string` | 文件名 |

#### Returns

`Promise`\<`void`\>

#### Defined in

tools/domTools.ts:49

___

### fullScreen

▸ **fullScreen**(`dom?`): `void`

全屏 若已全屏 则退出全屏

#### Parameters

| Name | Type |
| :------ | :------ |
| `dom?` | `HTMLElement` |

#### Returns

`void`

#### Defined in

tools/domTools.ts:332

___

### getAllStyle

▸ **getAllStyle**(): `Promise`\<`string`\>

获取所有样式表

#### Returns

`Promise`\<`string`\>

#### Defined in

tools/domTools.ts:187

___

### getImg

▸ **getImg**(`src`): `Promise`\<``false`` \| `HTMLImageElement`\>

判断图片的 src 是否可用，可用则返回图片

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `src` | `string` | 图片 |

#### Returns

`Promise`\<``false`` \| `HTMLImageElement`\>

#### Defined in

tools/domTools.ts:269

___

### getLocalStorage

▸ **getLocalStorage**\<`T`\>(`key`): `any`

获取 LocalStorage，无需手动反序列化

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |

#### Returns

`any`

#### Defined in

tools/domTools.ts:164

___

### getSelectedText

▸ **getSelectedText**(): `string`

获取选中的文本

#### Returns

`string`

#### Defined in

tools/domTools.ts:174

___

### getStyle

▸ **getStyle**(`el`, `attr`, `pseudoElt?`): `string` \| `number`

获取样式表属性 如果单位是 px ，则会去除单位

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `el` | `HTMLElement` | 元素 |
| `attr` | `string` | 样式属性键值 |
| `pseudoElt?` | `string` | 伪元素 |

#### Returns

`string` \| `number`

#### Defined in

tools/domTools.ts:118

___

### getWinHeight

▸ **getWinHeight**(): `number`

获取浏览器内容高度

#### Returns

`number`

#### Defined in

tools/domTools.ts:15

___

### getWinWidth

▸ **getWinWidth**(): `number`

获取浏览器内容宽度

#### Returns

`number`

#### Defined in

tools/domTools.ts:7

___

### handleCssUnit

▸ **handleCssUnit**(`value`): `string` \| `number`

处理`CSS`单位

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | `string` \| `number` |

#### Returns

`string` \| `number`

#### Defined in

tools/domTools.ts:85

___

### isDarkMode

▸ **isDarkMode**(): `boolean`

是否为深色模式

#### Returns

`boolean`

#### Defined in

tools/domTools.ts:180

___

### isToBottom

▸ **isToBottom**(): `boolean`

是否滑倒页面底部

#### Returns

`boolean`

#### Defined in

tools/domTools.ts:183

___

### judgeImgLoad

▸ **judgeImgLoad**(`el?`): `Promise`\<`boolean`\>

判断页面所有图片是否加载完成

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `el` | `Document` | `document` | 要判断的元素 默认 document |

#### Returns

`Promise`\<`boolean`\>

是否加载完成

#### Defined in

tools/domTools.ts:248

___

### matchProtocol

▸ **matchProtocol**(`url`): `string`

把`http`协议转换成当前站的

#### Parameters

| Name | Type |
| :------ | :------ |
| `url` | `string` |

#### Returns

`string`

#### Defined in

tools/domTools.ts:39

___

### print

▸ **print**(`el`, `styleStr`, `href?`): `void`

打印 必须启动一个服务器才能用; ***建议使用事件交互，如按钮点击，否则可能打开多个窗口***

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `el` | `HTMLElement` | 要打印的元素 |
| `styleStr` | `string` | 样式 建议使用`getAllStyle`函数，可不传 |
| `href?` | `string` | 打开的链接 默认使用`location.href` |

#### Returns

`void`

#### Defined in

tools/domTools.ts:210

▸ **print**(`elStr`, `styleStr`, `href?`): `void`

打印 必须启动一个服务器才能用; ***建议使用事件交互，如按钮点击，否则可能打开多个窗口***

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `elStr` | `string` | - |
| `styleStr` | `string` | 样式 建议使用`getAllStyle`函数，可不传 |
| `href?` | `string` | 打开的链接 默认使用`location.href` |

#### Returns

`void`

#### Defined in

tools/domTools.ts:210

___

### pxToVw

▸ **pxToVw**(`px`, `designSize?`, `unit?`): `string` \| `number`

将像素值转换为`vw`或`vh`单位 如果传入百分比值 则直接返回

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `px` | `string` \| `number` | `undefined` | 要转换的像素值或百分比值 |
| `designSize` | `number` | `1920` | 设计稿大小 默认为1920像素 |
| `unit` | ``"vw"`` \| ``"vh"`` | `'vw'` | 尺寸单位 默认为`vw` |

#### Returns

`string` \| `number`

转换后的值 带有指定单位

#### Defined in

tools/domTools.ts:99

___

### setLocalStorage

▸ **setLocalStorage**(`key`, `value`): `void`

设置 LocalStorage，无需手动序列化

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |
| `value` | `any` |

#### Returns

`void`

#### Defined in

tools/domTools.ts:160

___

### setParentOverflow

▸ **setParentOverflow**(`el`): `void`

检查并设置父元素的`overflow: hidden`

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `el` | `HTMLElement` | 当前元素 |

#### Returns

`void`

#### Defined in

tools/domTools.ts:321

___

### throttle

▸ **throttle**\<`P`, `T`, `R`\>(`fn`, `delay?`): (`this`: `T`, ...`args`: `P`) => `R`

节流

#### Type parameters

| Name | Type |
| :------ | :------ |
| `P` | extends `any`[] |
| `T` | `T` |
| `R` | `R` |

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `fn` | (`this`: `T`, ...`args`: `P`) => `R` | `undefined` |
| `delay` | `number` | `200` |

#### Returns

`fn`

▸ (`this`, `...args`): `R`

##### Parameters

| Name | Type |
| :------ | :------ |
| `this` | `T` |
| `...args` | `P` |

##### Returns

`R`

#### Defined in

tools/domTools.ts:129
