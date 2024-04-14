[@jl-org/tool](../README.md) / [Modules](../modules.md) / http

# Module: http

## Table of contents

### Functions

- [concurrentTask](http.md#concurrenttask)
- [retryReq](http.md#retryreq)

## Functions

### concurrentTask

▸ **concurrentTask**\<`T`\>(`tasks`, `maxNum?`): `Promise`\<`T`[]\>

并发任务数组 完成最大并发数后才会继续

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `tasks` | () => `Promise`\<`T`\>[] | `undefined` | 任务数组 |
| `maxNum` | `number` | `4` | 最大并发数 |

#### Returns

`Promise`\<`T`[]\>

#### Defined in

http/tool.ts:25

___

### retryReq

▸ **retryReq**\<`T`\>(`task`, `count?`): `Promise`\<`T`\>

失败后自动重试请求

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `task` | () => `Promise`\<`T`\> | `undefined` | 任务数组 |
| `count` | `number` | `3` | 重试次数 |

#### Returns

`Promise`\<`T`\>

#### Defined in

http/tool.ts:6
