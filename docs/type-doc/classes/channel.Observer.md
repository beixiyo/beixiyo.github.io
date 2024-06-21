[@jl-org/tool](../README.md) / [Modules](../modules.md) / [channel](../modules/channel.md) / Observer

# Class: Observer

[channel](../modules/channel.md).Observer

观察者模式，批量通知观察者

## Table of contents

### Constructors

- [constructor](channel.Observer.md#constructor)

### Methods

- [addObserver](channel.Observer.md#addobserver)
- [notify](channel.Observer.md#notify)
- [removeObserver](channel.Observer.md#removeobserver)

## Constructors

### constructor

• **new Observer**(): [`Observer`](channel.Observer.md)

#### Returns

[`Observer`](channel.Observer.md)

## Methods

### addObserver

▸ **addObserver**(`observer`): `void`

添加观察者

#### Parameters

| Name | Type |
| :------ | :------ |
| `observer` | [`IObserver`](../interfaces/channel.IObserver.md) |

#### Returns

`void`

#### Defined in

channel/Observe.ts:8

___

### notify

▸ **notify**(`...args`): `void`

通知所有观察者

#### Parameters

| Name | Type |
| :------ | :------ |
| `...args` | `any`[] |

#### Returns

`void`

#### Defined in

channel/Observe.ts:21

___

### removeObserver

▸ **removeObserver**(`observer`): `void`

移除观察者

#### Parameters

| Name | Type |
| :------ | :------ |
| `observer` | [`IObserver`](../interfaces/channel.IObserver.md) |

#### Returns

`void`

#### Defined in

channel/Observe.ts:13
