[@jl-org/tool](../README.md) / [Modules](../modules.md) / [channel](../modules/channel.md) / EventBus

# Class: EventBus\<T\>

[channel](../modules/channel.md).EventBus

消息订阅与派发，订阅和派发指定消息

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `BaseKey` = `BaseKey` |

## Hierarchy

- **`EventBus`**

  ↳ [`WS`](net.WS.md)

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

• **new EventBus**\<`T`\>(): [`EventBus`](channel.EventBus.md)\<`T`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `string` \| `number` \| `symbol` = `string` \| `number` \| `symbol` |

#### Returns

[`EventBus`](channel.EventBus.md)\<`T`\>

## Methods

### emit

▸ **emit**(`eventName`, `...args`): `void`

发送指定事件，通知所有订阅者

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `T` | 事件名 |
| `...args` | `any`[] | 不定参数 |

#### Returns

`void`

#### Defined in

[src/channel/EventBus.ts:36](https://github.com/beixiyo/jl-tool/blob/45e2229/src/channel/EventBus.ts#L36)

___

### off

▸ **off**(`eventName?`, `func?`): `void`

取关

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName?` | `T` | 不传代表重置所有 |
| `func?` | `Function` | 要取关的函数，为空取关该事件的所有函数 |

#### Returns

`void`

#### Defined in

[src/channel/EventBus.ts:53](https://github.com/beixiyo/jl-tool/blob/45e2229/src/channel/EventBus.ts#L53)

___

### on

▸ **on**(`eventName`, `fn`): `void`

订阅

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `T` | 事件名 |
| `fn` | `Function` | 接收函数 |

#### Returns

`void`

#### Defined in

[src/channel/EventBus.ts:18](https://github.com/beixiyo/jl-tool/blob/45e2229/src/channel/EventBus.ts#L18)

___

### once

▸ **once**(`eventName`, `fn`): `void`

订阅一次

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `T` | 事件名 |
| `fn` | `Function` | 接收函数 |

#### Returns

`void`

#### Defined in

[src/channel/EventBus.ts:27](https://github.com/beixiyo/jl-tool/blob/45e2229/src/channel/EventBus.ts#L27)
