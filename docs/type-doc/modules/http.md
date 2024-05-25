[@jl-org/tool](../README.md) / [Modules](../modules.md) / http

# Module: http

## Table of contents

### Classes

- [WS](../classes/http.WS.md)

### Type Aliases

- [SocketCb](http.md#socketcb)

### Functions

- [concurrentTask](http.md#concurrenttask)
- [retryReq](http.md#retryreq)

## Type Aliases

### SocketCb

Ƭ **SocketCb**\<`T`\>: (`event`: `MessageEvent`\<`T`\>) => `void`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Type declaration

▸ (`event`): `void`

##### Parameters

| Name | Type |
| :------ | :------ |
| `event` | `MessageEvent`\<`T`\> |

##### Returns

`void`

#### Defined in

http/WS.ts:251

## Functions

### concurrentTask

▸ **concurrentTask**\<`T`\>(`tasks`, `maxCount?`): `Promise`\<`T`[]\>

并发任务数组 完成最大并发数后才会继续

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `tasks` | () => `Promise`\<`T`\>[] | `undefined` | 任务数组 |
| `maxCount` | `number` | `4` | 最大并发数，默认 4 |

#### Returns

`Promise`\<`T`[]\>

#### Defined in

http/tool.ts:24

___

### retryReq

▸ **retryReq**\<`T`\>(`task`, `maxCount?`): `Promise`\<`T`\>

失败后自动重试请求

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `task` | () => `Promise`\<`T`\> | `undefined` | 任务数组 |
| `maxCount` | `number` | `3` | 重试次数，默认 3 |

#### Returns

`Promise`\<`T`\>

#### Defined in

http/tool.ts:6
