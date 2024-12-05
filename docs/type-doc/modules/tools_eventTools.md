[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/eventTools

# Module: tools/eventTools

## Table of contents

### Type Aliases

- [DoubleKeyDownOpts](tools_eventTools.md#doublekeydownopts)
- [WinListenerParams](tools_eventTools.md#winlistenerparams)

### Functions

- [bindWinEvent](tools_eventTools.md#bindwinevent)
- [doubleKeyDown](tools_eventTools.md#doublekeydown)
- [fullScreen](tools_eventTools.md#fullscreen)
- [getCurTheme](tools_eventTools.md#getcurtheme)
- [judgeImgLoad](tools_eventTools.md#judgeimgload)
- [onChangeTheme](tools_eventTools.md#onchangetheme)

## Type Aliases

### DoubleKeyDownOpts

Ƭ **DoubleKeyDownOpts**: `Object`

#### Type declaration

| Name | Type | Description |
| :------ | :------ | :------ |
| `triggerKey?` | keyof `KeyboardEvent` | 触发的按键（KeyboardEvent.key） **`Default`** ```ts key ``` |

#### Defined in

[src/tools/eventTools.ts:153](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/eventTools.ts#L153)

___

### WinListenerParams

Ƭ **WinListenerParams**\<`K`\>: `Parameters`\<typeof `window.addEventListener`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `K` | extends keyof `WindowEventMap` |

#### Defined in

[src/tools/eventTools.ts:151](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/eventTools.ts#L151)

## Functions

### bindWinEvent

▸ **bindWinEvent**\<`K`\>(`eventName`, `listener`, `options?`): () => `void`

绑定 window 事件，返回解绑事件

#### Type parameters

| Name | Type |
| :------ | :------ |
| `K` | extends keyof `WindowEventMap` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `K` | window.addEventListener 事件名称 |
| `listener` | (`this`: `Window`, `ev`: `WindowEventMap`[`K`]) => `any` | window.addEventListener 事件回调 |
| `options?` | `boolean` \| `AddEventListenerOptions` | window.addEventListener 配置项 |

#### Returns

`fn`

解绑事件函数

▸ (): `void`

##### Returns

`void`

#### Defined in

[src/tools/eventTools.ts:39](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/eventTools.ts#L39)

___

### doubleKeyDown

▸ **doubleKeyDown**\<`T`, `R`\>(`key`, `fn`, `gap?`, `«destructured»?`): (`e`: `KeyboardEvent`) => `undefined` \| `R`

返回一个双击键盘事件

#### Type parameters

| Name |
| :------ |
| `T` |
| `R` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `key` | `string` | `undefined` | 键盘码（KeyboardEvent.key） |
| `fn` | (`this`: `T`, `e`: `KeyboardEvent`, ...`args`: `any`[]) => `R` | `undefined` | 双击后执行函数 |
| `gap` | `number` | `150` | 间隔时间，默认 150 |
| `«destructured»` | [`DoubleKeyDownOpts`](tools_eventTools.md#doublekeydownopts) | `{}` | - |

#### Returns

`fn`

▸ (`e`): `undefined` \| `R`

##### Parameters

| Name | Type |
| :------ | :------ |
| `e` | `KeyboardEvent` |

##### Returns

`undefined` \| `R`

#### Defined in

[src/tools/eventTools.ts:80](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/eventTools.ts#L80)

___

### fullScreen

▸ **fullScreen**(`dom?`): `void`

适配主流浏览器的全屏。若已全屏，则退出全屏

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dom?` | `HTMLElement` | 要全屏的元素 |

#### Returns

`void`

#### Defined in

[src/tools/eventTools.ts:114](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/eventTools.ts#L114)

___

### getCurTheme

▸ **getCurTheme**(): ``"dark"`` \| ``"light"``

获取当前主题

#### Returns

``"dark"`` \| ``"light"``

#### Defined in

[src/tools/eventTools.ts:25](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/eventTools.ts#L25)

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

[src/tools/eventTools.ts:57](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/eventTools.ts#L57)

___

### onChangeTheme

▸ **onChangeTheme**(`onLight`, `onDark`): () => `void`

监听用户主题变化

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `onLight` | `VoidFunction` | 用户切换到浅色模式时触发 |
| `onDark` | `VoidFunction` | 用户切换到深色模式时触发 |

#### Returns

`fn`

解绑事件函数

▸ (): `void`

##### Returns

`void`

#### Defined in

[src/tools/eventTools.ts:7](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/eventTools.ts#L7)
