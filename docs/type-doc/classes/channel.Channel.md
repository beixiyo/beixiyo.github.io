[@jl-org/tool](../README.md) / [Modules](../modules.md) / [channel](../modules/channel.md) / Channel

# Class: Channel

[channel](../modules/channel.md).Channel

事件频道，用于管理事件
可以批量触发，也可以单独触发

## Table of contents

### Constructors

- [constructor](channel.Channel.md#constructor)

### Methods

- [add](channel.Channel.md#add)
- [del](channel.Channel.md#del)
- [trigger](channel.Channel.md#trigger)

## Constructors

### constructor

• **new Channel**(): [`Channel`](channel.Channel.md)

#### Returns

[`Channel`](channel.Channel.md)

## Methods

### add

▸ **add**(`actionType`, `func`): () => `void`

添加监听

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `actionType` | `ActionType` | 类型 |
| `func` | `Function` | 函数 |

#### Returns

`fn`

删除监听的 **函数**

▸ (): `void`

##### Returns

`void`

#### Defined in

channel/Channel.ts:14

___

### del

▸ **del**(`actionType`, `func?`): `void`

删除某个类型 或者 某个类型的具体函数

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `actionType` | `ActionType` | 类型 |
| `func?` | `Function` | 具体函数，不传则删除所有 |

#### Returns

`void`

#### Defined in

channel/Channel.ts:29

___

### trigger

▸ **trigger**(`actionType`, `...args`): `void`

触发某个类型

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `actionType` | `ActionType` | 类型 |
| `...args` | `any`[] | 不定参数 |

#### Returns

`void`

#### Defined in

channel/Channel.ts:45
