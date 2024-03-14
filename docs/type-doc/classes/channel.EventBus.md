[@jl-org/tool](../README.md) / [Modules](../modules.md) / [channel](../modules/channel.md) / EventBus

# Class: EventBus

[channel](../modules/channel.md).EventBus

消息订阅与派发

## Table of contents

### Constructors

- [constructor](channel.EventBus.md#constructor)

### Methods

- [emit](channel.EventBus.md#emit)
- [off](channel.EventBus.md#off)
- [on](channel.EventBus.md#on)
- [once](channel.EventBus.md#once)

## Constructors

### constructor

• **new EventBus**(): [`EventBus`](channel.EventBus.md)

#### Returns

[`EventBus`](channel.EventBus.md)

## Methods

### emit

▸ **emit**(`eventName`, `...args`): `void`

发送事件

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `string` | 事件名 |
| `...args` | `any`[] | 不定参数 |

#### Returns

`void`

#### Defined in

channel/EventBus.ts:31

___

### off

▸ **off**(`eventName?`, `func?`): `void`

取关

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName?` | `string` | 空字符或者不传代表重置所有 |
| `func?` | `Function` | 要取关的函数，为空取关该事件的所有函数 |

#### Returns

`void`

#### Defined in

channel/EventBus.ts:47

___

### on

▸ **on**(`eventName`, `fn`): `void`

订阅

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `string` | 事件名 |
| `fn` | `Function` | 接收函数 |

#### Returns

`void`

#### Defined in

channel/EventBus.ts:13

___

### once

▸ **once**(`eventName`, `fn`): `void`

订阅一次

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `string` | 事件名 |
| `fn` | `Function` | 接收函数 |

#### Returns

`void`

#### Defined in

channel/EventBus.ts:22
