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

[src/webApi/Recorder.ts:23](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Recorder.ts#L23)

## Properties

### audioUrl

• **audioUrl**: `string` = `''`

录制的音频的临时 `URL` 。录制完毕自动赋值，每次录制前都会清空

#### Defined in

[src/webApi/Recorder.ts:12](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Recorder.ts#L12)

___

### chunks

• **chunks**: `Blob`[] = `[]`

录制的音频 `Blob`。录制完毕自动赋值 每次录制前都会清空

#### Defined in

[src/webApi/Recorder.ts:14](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Recorder.ts#L14)

## Methods

### init

▸ **init**(): `Promise`\<`undefined` \| `string`\>

#### Returns

`Promise`\<`undefined` \| `string`\>

#### Defined in

[src/webApi/Recorder.ts:27](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Recorder.ts#L27)

___

### play

▸ **play**(`url?`): [`Recorder`](webApi.Recorder.md)

播放刚刚的录音，或者指定 base64 的录音

#### Parameters

| Name | Type |
| :------ | :------ |
| `url?` | `string` |

#### Returns

[`Recorder`](webApi.Recorder.md)

#### Defined in

[src/webApi/Recorder.ts:75](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Recorder.ts#L75)

___

### start

▸ **start**(): [`Recorder`](webApi.Recorder.md)

开始录音

#### Returns

[`Recorder`](webApi.Recorder.md)

#### Defined in

[src/webApi/Recorder.ts:54](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Recorder.ts#L54)

___

### stop

▸ **stop**(): [`Recorder`](webApi.Recorder.md)

停止录音，停止后，回调给构造器传递的 `onFinish`

#### Returns

[`Recorder`](webApi.Recorder.md)

#### Defined in

[src/webApi/Recorder.ts:67](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/Recorder.ts#L67)
