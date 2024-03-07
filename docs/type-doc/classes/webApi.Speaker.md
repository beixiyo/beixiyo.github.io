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

webApi/Speaker.ts:21

## Properties

### speak

• **speak**: `SpeechSynthesisUtterance`

内部操作的实例对象

#### Defined in

webApi/Speaker.ts:13

___

### voiceArr

• **voiceArr**: `SpeechSynthesisVoice`[] = `[]`

可播放语音列表

#### Defined in

webApi/Speaker.ts:11

___

### voiceName

• **voiceName**: `string` = `'Microsoft Kangkang - Chinese (Simplified, PRC)'`

默认播放语音名称

#### Defined in

webApi/Speaker.ts:9

## Methods

### pause

▸ **pause**(): `void`

暂停

#### Returns

`void`

#### Defined in

webApi/Speaker.ts:51

___

### play

▸ **play**(`onEnd?`): `void`

播放声音

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `onEnd?` | (`e`: `SpeechSynthesisEvent`) => `void` | 声音播放完毕的回调 |

#### Returns

`void`

#### Defined in

webApi/Speaker.ts:38

___

### resume

▸ **resume**(): `void`

继续

#### Returns

`void`

#### Defined in

webApi/Speaker.ts:56

___

### setPitch

▸ **setPitch**(`pitch`): `void`

设置音高

#### Parameters

| Name | Type |
| :------ | :------ |
| `pitch` | `number` |

#### Returns

`void`

#### Defined in

webApi/Speaker.ts:90

___

### setRate

▸ **setRate**(`rate`): `void`

设置语速

#### Parameters

| Name | Type |
| :------ | :------ |
| `rate` | `number` |

#### Returns

`void`

#### Defined in

webApi/Speaker.ts:82

___

### setText

▸ **setText**(`txt?`): `void`

设置播放文本

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `txt` | `string` | `''` |

#### Returns

`void`

#### Defined in

webApi/Speaker.ts:61

___

### setVoice

▸ **setVoice**(`index`): `void`

设置声音类型

#### Parameters

| Name | Type |
| :------ | :------ |
| `index` | `number` |

#### Returns

`void`

#### Defined in

webApi/Speaker.ts:74

___

### setVolume

▸ **setVolume**(`volume?`): `void`

设置音量

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `volume` | `number` | `1` |

#### Returns

`void`

#### Defined in

webApi/Speaker.ts:66

___

### stop

▸ **stop**(): `void`

停止

#### Returns

`void`

#### Defined in

webApi/Speaker.ts:46
