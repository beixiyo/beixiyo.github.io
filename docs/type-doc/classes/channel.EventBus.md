[@jl-org/tool](../README.md) / [Modules](../modules.md) / [channel](../modules/channel.md) / EventBus

# Class: EventBus

[channel](../modules/channel.md).EventBus

消息订阅与派发，订阅和派发指定消息

## Hierarchy

- **`EventBus`**

  ↳ [`WS`](http.WS.md)

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

发送指定事件，通知所有订阅者

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `string` \| `number` \| `symbol` | 事件名 |
| `...args` | `any`[] | 不定参数 |

#### Returns

`void`

#### Defined in

channel/EventBus.ts:36

___

### off

▸ **off**(`eventName?`, `func?`): `void`

取关

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName?` | `string` \| `number` \| `symbol` | 空字符或者不传代表重置所有 |
| `func?` | `Function` | 要取关的函数，为空取关该事件的所有函数 |

#### Returns

`void`

#### Defined in

channel/EventBus.ts:53

___

### on

▸ **on**(`eventName`, `fn`): `void`

订阅

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `string` \| `number` \| `symbol` | 事件名 |
| `fn` | `Function` | 接收函数 |

#### Returns

`void`

#### Defined in

channel/EventBus.ts:18

___

### once

▸ **once**(`eventName`, `fn`): `void`

订阅一次

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `string` \| `number` \| `symbol` | 事件名 |
| `fn` | `Function` | 接收函数 |

#### Returns

`void`

#### Defined in

channel/EventBus.ts:27
