[@jl-org/tool](../README.md) / [Modules](../modules.md) / [webApi](../modules/webApi.md) / SpeakToTxt

# Class: SpeakToTxt

[webApi](../modules/webApi.md).SpeakToTxt

语音转文字，默认中文识别

**`Example`**

```ts
const speakToTxt = new SpeakToTxt((data) => {
    console.log(data)
})
speakTxtBtn.onclick = () => speakToTxt.start()
```

## Table of contents

### Constructors

- [constructor](webApi.SpeakToTxt.md#constructor)

### Methods

- [start](webApi.SpeakToTxt.md#start)
- [stop](webApi.SpeakToTxt.md#stop)

## Constructors

### constructor

• **new SpeakToTxt**(`onResult`, `opts?`): [`SpeakToTxt`](webApi.SpeakToTxt.md)

调用 start 方法开始录音，默认中文识别

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `onResult` | `SpeakToTxtOnResult` | 返回结果的回调 |
| `opts` | `SpeakToTxtOpts` | 配置项 |

#### Returns

[`SpeakToTxt`](webApi.SpeakToTxt.md)

#### Defined in

[src/webApi/SpeakToTxt.ts:21](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/SpeakToTxt.ts#L21)

## Methods

### start

▸ **start**(): [`SpeakToTxt`](webApi.SpeakToTxt.md)

开始识别

#### Returns

[`SpeakToTxt`](webApi.SpeakToTxt.md)

#### Defined in

[src/webApi/SpeakToTxt.ts:38](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/SpeakToTxt.ts#L38)

___

### stop

▸ **stop**(): [`SpeakToTxt`](webApi.SpeakToTxt.md)

停止识别

#### Returns

[`SpeakToTxt`](webApi.SpeakToTxt.md)

#### Defined in

[src/webApi/SpeakToTxt.ts:44](https://github.com/beixiyo/jl-tool/blob/45e2229/src/webApi/SpeakToTxt.ts#L44)
