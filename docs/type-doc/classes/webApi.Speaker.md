[@jl-org/tool](../README.md) / [Modules](../modules.md) / [webApi](../modules/webApi.md) / Speaker

# Class: Speaker

[webApi](../modules/webApi.md).Speaker

语音播放

**`Example`**

```ts
const speaker = new Speaker('你好')
speaker.play()
```

## Table of contents

### Constructors

- [constructor](webApi.Speaker.md#constructor)

### Properties

- [speak](webApi.Speaker.md#speak)
- [voiceArr](webApi.Speaker.md#voicearr)
- [voiceName](webApi.Speaker.md#voicename)

### Methods

- [pause](webApi.Speaker.md#pause)
- [play](webApi.Speaker.md#play)
- [resume](webApi.Speaker.md#resume)
- [setPitch](webApi.Speaker.md#setpitch)
- [setRate](webApi.Speaker.md#setrate)
- [setText](webApi.Speaker.md#settext)
- [setVoice](webApi.Speaker.md#setvoice)
- [setVolume](webApi.Speaker.md#setvolume)
- [stop](webApi.Speaker.md#stop)

## Constructors

### constructor

• **new Speaker**(`txt?`, `volume?`, `lang?`): [`Speaker`](webApi.Speaker.md)

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `txt` | `string` | `''` |
| `volume` | `number` | `1` |
| `lang` | `string` | `'zh-CN'` |

#### Returns

[`Speaker`](webApi.Speaker.md)

#### Defined in

[src/webApi/Speaker.ts:23](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L23)

## Properties

### speak

• **speak**: `SpeechSynthesisUtterance`

内部操作的实例对象

#### Defined in

[src/webApi/Speaker.ts:15](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L15)

___

### voiceArr

• **voiceArr**: `SpeechSynthesisVoice`[] = `[]`

可播放语音列表

#### Defined in

[src/webApi/Speaker.ts:13](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L13)

___

### voiceName

• **voiceName**: `string` = `'Microsoft Kangkang - Chinese (Simplified, PRC)'`

默认播放语音名称

#### Defined in

[src/webApi/Speaker.ts:11](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L11)

## Methods

### pause

▸ **pause**(): [`Speaker`](webApi.Speaker.md)

暂停

#### Returns

[`Speaker`](webApi.Speaker.md)

#### Defined in

[src/webApi/Speaker.ts:55](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L55)

___

### play

▸ **play**(`onEnd?`): [`Speaker`](webApi.Speaker.md)

播放声音

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `onEnd?` | (`e`: `SpeechSynthesisEvent`) => `void` | 声音播放完毕的回调 |

#### Returns

[`Speaker`](webApi.Speaker.md)

#### Defined in

[src/webApi/Speaker.ts:40](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L40)

___

### resume

▸ **resume**(): [`Speaker`](webApi.Speaker.md)

继续

#### Returns

[`Speaker`](webApi.Speaker.md)

#### Defined in

[src/webApi/Speaker.ts:61](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L61)

___

### setPitch

▸ **setPitch**(`pitch`): [`Speaker`](webApi.Speaker.md)

设置音高

#### Parameters

| Name | Type |
| :------ | :------ |
| `pitch` | `number` |

#### Returns

[`Speaker`](webApi.Speaker.md)

#### Defined in

[src/webApi/Speaker.ts:94](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L94)

___

### setRate

▸ **setRate**(`rate`): [`Speaker`](webApi.Speaker.md)

设置语速

#### Parameters

| Name | Type |
| :------ | :------ |
| `rate` | `number` |

#### Returns

[`Speaker`](webApi.Speaker.md)

#### Defined in

[src/webApi/Speaker.ts:88](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L88)

___

### setText

▸ **setText**(`txt?`): [`Speaker`](webApi.Speaker.md)

设置播放文本

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `txt` | `string` | `''` |

#### Returns

[`Speaker`](webApi.Speaker.md)

#### Defined in

[src/webApi/Speaker.ts:67](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L67)

___

### setVoice

▸ **setVoice**(`index`): `undefined` \| [`Speaker`](webApi.Speaker.md)

设置声音类型

#### Parameters

| Name | Type |
| :------ | :------ |
| `index` | `number` |

#### Returns

`undefined` \| [`Speaker`](webApi.Speaker.md)

#### Defined in

[src/webApi/Speaker.ts:79](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L79)

___

### setVolume

▸ **setVolume**(`volume?`): [`Speaker`](webApi.Speaker.md)

设置音量

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `volume` | `number` | `1` |

#### Returns

[`Speaker`](webApi.Speaker.md)

#### Defined in

[src/webApi/Speaker.ts:73](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L73)

___

### stop

▸ **stop**(): [`Speaker`](webApi.Speaker.md)

停止

#### Returns

[`Speaker`](webApi.Speaker.md)

#### Defined in

[src/webApi/Speaker.ts:49](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Speaker.ts#L49)
