[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/domTools

# Module: tools/domTools

## Table of contents

### Functions

- [HTMLToStr](tools_domTools.md#htmltostr)
- [adaptPx](tools_domTools.md#adaptpx)
- [copyToClipboard](tools_domTools.md#copytoclipboard)
- [debounce](tools_domTools.md#debounce)
- [getAllStyle](tools_domTools.md#getallstyle)
- [getImg](tools_domTools.md#getimg)
- [getLocalStorage](tools_domTools.md#getlocalstorage)
- [getSelectedText](tools_domTools.md#getselectedtext)
- [getStyle](tools_domTools.md#getstyle)
- [getWinHeight](tools_domTools.md#getwinheight)
- [getWinWidth](tools_domTools.md#getwinwidth)
- [handleCssUnit](tools_domTools.md#handlecssunit)
- [isDarkMode](tools_domTools.md#isdarkmode)
- [isMobile](tools_domTools.md#ismobile)
- [isToBottom](tools_domTools.md#istobottom)
- [matchProtocol](tools_domTools.md#matchprotocol)
- [print](tools_domTools.md#print)
- [pxToVw](tools_domTools.md#pxtovw)
- [rafThrottle](tools_domTools.md#rafthrottle)
- [setLocalStorage](tools_domTools.md#setlocalstorage)
- [setParentOverflow](tools_domTools.md#setparentoverflow)
- [throttle](tools_domTools.md#throttle)

## Functions

### HTMLToStr

▸ **HTMLToStr**(`HTMLStr`): ``null`` \| `string`

解析出`HTML`的所有字符串

#### Parameters

| Name | Type |
| :------ | :------ |
| `HTMLStr` | `string` |

#### Returns

``null`` \| `string`

#### Defined in

[src/tools/domTools.ts:286](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L286)

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

[src/tools/domTools.ts:36](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L36)

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

[src/tools/domTools.ts:206](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L206)

___

### debounce

▸ **debounce**\<`P`\>(`fn`, `delay?`): (`this`: `any`, ...`args`: `P`) => `void`

防抖

#### Type parameters

| Name | Type |
| :------ | :------ |
| `P` | extends `any`[] |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `fn` | (...`args`: `P`) => `any` | `undefined` | - |
| `delay` | `number` | `200` | 延迟时间（ms），@default 200 |

#### Returns

`fn`

▸ (`this`, `...args`): `void`

##### Parameters

| Name | Type |
| :------ | :------ |
| `this` | `any` |
| `...args` | `P` |

##### Returns

`void`

#### Defined in

[src/tools/domTools.ts:139](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L139)

___

### getAllStyle

▸ **getAllStyle**(): `Promise`\<`undefined` \| `string`\>

获取所有样式表

#### Returns

`Promise`\<`undefined` \| `string`\>

#### Defined in

[src/tools/domTools.ts:216](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L216)

___

### getImg

▸ **getImg**(`src`, `setImg?`): `Promise`\<``false`` \| `HTMLImageElement`\>

判断图片的 src 是否可用，可用则返回图片

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `src` | `string` | 图片 |
| `setImg?` | (`img`: `HTMLImageElement`) => `void` | 图片加载前执行的回调函数 |

#### Returns

`Promise`\<``false`` \| `HTMLImageElement`\>

#### Defined in

[src/tools/domTools.ts:102](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L102)

___

### getLocalStorage

▸ **getLocalStorage**\<`T`\>(`key`, `autoParseJSON?`): `T` \| ``null``

获取 LocalStorage，默认自动解析 JSON。
### 'undefined' 字符串会被转成 null

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `key` | `string` | `undefined` | - |
| `autoParseJSON` | `boolean` | `true` | 是否自动解析 JSON，默认 true |

#### Returns

`T` \| ``null``

#### Defined in

[src/tools/domTools.ts:190](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L190)

___

### getSelectedText

▸ **getSelectedText**(): `undefined` \| `string`

获取选中的文本

#### Returns

`undefined` \| `string`

#### Defined in

[src/tools/domTools.ts:203](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L203)

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

[src/tools/domTools.ts:87](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L87)

___

### getWinHeight

▸ **getWinHeight**(): `number`

获取浏览器内容高度

#### Returns

`number`

#### Defined in

[src/tools/domTools.ts:15](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L15)

___

### getWinWidth

▸ **getWinWidth**(): `number`

获取浏览器内容宽度

#### Returns

`number`

#### Defined in

[src/tools/domTools.ts:7](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L7)

___

### handleCssUnit

▸ **handleCssUnit**(`value`): `string` \| `number`

处理 `CSS` 单位，如果可以转换成数字，则添加 px

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | `string` \| `number` |

#### Returns

`string` \| `number`

#### Defined in

[src/tools/domTools.ts:54](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L54)

___

### isDarkMode

▸ **isDarkMode**(): `boolean`

是否为深色模式

#### Returns

`boolean`

#### Defined in

[src/tools/domTools.ts:209](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L209)

___

### isMobile

▸ **isMobile**(): `boolean`

正则匹配移动设备 UA

#### Returns

`boolean`

是否为移动设备

#### Defined in

[src/tools/domTools.ts:296](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L296)

___

### isToBottom

▸ **isToBottom**(): `boolean`

是否滑倒页面底部

#### Returns

`boolean`

#### Defined in

[src/tools/domTools.ts:212](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L212)

___

### matchProtocol

▸ **matchProtocol**(`url`): `string`

把 `http` 协议转换成当前协议

#### Parameters

| Name | Type |
| :------ | :------ |
| `url` | `string` |

#### Returns

`string`

#### Defined in

[src/tools/domTools.ts:25](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L25)

___

### print

▸ **print**(`el`, `styleStr`, `href?`): `void`

打印 必须启动一个服务器才能用; **建议使用事件交互，如按钮点击，否则可能打开多个窗口**

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `el` | `HTMLElement` | 要打印的元素 |
| `styleStr` | `undefined` \| `string` | 样式 建议使用`getAllStyle`函数，可不传 |
| `href?` | `string` | 打开的链接 默认使用`location.href` |

#### Returns

`void`

#### Defined in

[src/tools/domTools.ts:240](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L240)

▸ **print**(`elStr`, `styleStr`, `href?`): `void`

打印 必须启动一个服务器才能用; **建议使用事件交互，如按钮点击，否则可能打开多个窗口**

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `elStr` | `string` | - |
| `styleStr` | `undefined` \| `string` | 样式 建议使用`getAllStyle`函数，可不传 |
| `href?` | `string` | 打开的链接 默认使用`location.href` |

#### Returns

`void`

#### Defined in

[src/tools/domTools.ts:240](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L240)

___

### pxToVw

▸ **pxToVw**(`px`, `designSize?`, `unit?`): `string` \| `number`

将像素值转换为`vw`或`vh`单位，如果传入百分比值，则直接返回

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

[src/tools/domTools.ts:68](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L68)

___

### rafThrottle

▸ **rafThrottle**\<`P`\>(`fn`): (`this`: `any`, ...`args`: `P`) => `void`

用 requestAnimationFrame 节流，只有一帧内执行完毕，才会继续执行

#### Type parameters

| Name | Type |
| :------ | :------ |
| `P` | extends `any`[] |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `fn` | (...`args`: `P`) => `any` | 可以是异步函数 |

#### Returns

`fn`

▸ (`this`, `...args`): `void`

##### Parameters

| Name | Type |
| :------ | :------ |
| `this` | `any` |
| `...args` | `P` |

##### Returns

`void`

#### Defined in

[src/tools/domTools.ts:157](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L157)

___

### setLocalStorage

▸ **setLocalStorage**(`key`, `value`, `autoToJSON?`): `void`

设置 LocalStorage，默认自动转 JSON

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `key` | `string` | `undefined` | - |
| `value` | `any` | `undefined` | - |
| `autoToJSON` | `boolean` | `true` | 是否自动转 JSON，默认 true |

#### Returns

`void`

#### Defined in

[src/tools/domTools.ts:177](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L177)

___

### setParentOverflow

▸ **setParentOverflow**(`el`): `void`

检查并设置父元素的 `overflow: hidden`

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `el` | `HTMLElement` | 当前元素 |

#### Returns

`void`

#### Defined in

[src/tools/domTools.ts:276](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L276)

___

### throttle

▸ **throttle**\<`P`\>(`fn`, `delay?`): (`this`: `any`, ...`args`: `P`) => `any`

节流

#### Type parameters

| Name | Type |
| :------ | :------ |
| `P` | extends `any`[] |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `fn` | (...`args`: `P`) => `any` | `undefined` | - |
| `delay` | `number` | `200` | 延迟时间（ms），@default 200 |

#### Returns

`fn`

▸ (`this`, `...args`): `any`

##### Parameters

| Name | Type |
| :------ | :------ |
| `this` | `any` |
| `...args` | `P` |

##### Returns

`any`

#### Defined in

[src/tools/domTools.ts:120](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/domTools.ts#L120)
