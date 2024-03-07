[@jl-org/tool](../README.md) / [Modules](../modules.md) / webApi

# Module: webApi

## Table of contents

### Classes

- [Recorder](../classes/webApi.Recorder.md)
- [SpeakToTxt](../classes/webApi.SpeakToTxt.md)
- [Speaker](../classes/webApi.Speaker.md)

### Functions

- [openCamera](webApi.md#opencamera)
- [screenCAP](webApi.md#screencap)

## Functions

### openCamera

▸ **openCamera**(`callbackOrVideoEl`): `Promise`\<`Function`\>

开启摄像头

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `callbackOrVideoEl` | `HTMLVideoElement` \| (`stream`: `MediaStream`) => `void` | 视频元素或者回调 |

#### Returns

`Promise`\<`Function`\>

停止播放的函数

#### Defined in

webApi/tools.ts:6

___

### screenCAP

▸ **screenCAP**(`fileName?`): `Promise`\<`void`\>

录屏

#### Parameters

| Name | Type |
| :------ | :------ |
| `fileName?` | `string` |

#### Returns

`Promise`\<`void`\>

#### Defined in

webApi/tools.ts:33
