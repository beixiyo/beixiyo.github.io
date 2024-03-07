[@jl-org/tool](../README.md) / [Modules](../modules.md) / [webApi](../modules/webApi.md) / Recorder

# Class: Recorder

[webApi](../modules/webApi.md).Recorder

录音

**`Example`**

```ts
const recorder = new Recorder()
await recorder.init()
recorder.start()
```

## Table of contents

### Constructors

- [constructor](webApi.Recorder.md#constructor)

### Properties

- [audioUrl](webApi.Recorder.md#audiourl)
- [chunks](webApi.Recorder.md#chunks)

### Methods

- [init](webApi.Recorder.md#init)
- [play](webApi.Recorder.md#play)
- [start](webApi.Recorder.md#start)
- [stop](webApi.Recorder.md#stop)

## Constructors

### constructor

• **new Recorder**(`onFinish?`): [`Recorder`](webApi.Recorder.md)

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `onFinish?` | (`audioUrl`: `string`, `chunk`: `Blob`[]) => `void` | 录音完成的回调 |

#### Returns

[`Recorder`](webApi.Recorder.md)

#### Defined in

webApi/Recorder.ts:21

## Properties

### audioUrl

• **audioUrl**: `string` = `''`

录制的音频的临时 `URL` 。录制完毕自动赋值，每次录制前都会清空

#### Defined in

webApi/Recorder.ts:10

___

### chunks

• **chunks**: `Blob`[] = `[]`

录制的音频 `Blob`。录制完毕自动赋值 每次录制前都会清空

#### Defined in

webApi/Recorder.ts:12

## Methods

### init

▸ **init**(): `Promise`\<`string`\>

#### Returns

`Promise`\<`string`\>

#### Defined in

webApi/Recorder.ts:25

___

### play

▸ **play**(`url?`): `void`

播放刚刚的录音，或者指定 base64 的录音

#### Parameters

| Name | Type |
| :------ | :------ |
| `url?` | `string` |

#### Returns

`void`

#### Defined in

webApi/Recorder.ts:70

___

### start

▸ **start**(): `void`

开始录音

#### Returns

`void`

#### Defined in

webApi/Recorder.ts:52

___

### stop

▸ **stop**(): `void`

停止录音，停止后，回调给构造器传递的 `onFinish`

#### Returns

`void`

#### Defined in

webApi/Recorder.ts:63
