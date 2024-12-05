[@jl-org/tool](../README.md) / [Modules](../modules.md) / [dataStructure](../modules/dataStructure.md) / LRUCache

# Class: LRUCache\<K, V\>

[dataStructure](../modules/dataStructure.md).LRUCache

## Type parameters

| Name |
| :------ |
| `K` |
| `V` |

## Hierarchy

- `Map`\<`K`, `V`\>

  ↳ **`LRUCache`**

## Table of contents

### Constructors

- [constructor](dataStructure.LRUCache.md#constructor)

### Properties

- [[toStringTag]](dataStructure.LRUCache.md#[tostringtag])
- [maxCacheLen](dataStructure.LRUCache.md#maxcachelen)
- [size](dataStructure.LRUCache.md#size)
- [[species]](dataStructure.LRUCache.md#[species])

### Methods

- [[iterator]](dataStructure.LRUCache.md#[iterator])
- [clear](dataStructure.LRUCache.md#clear)
- [delete](dataStructure.LRUCache.md#delete)
- [entries](dataStructure.LRUCache.md#entries)
- [forEach](dataStructure.LRUCache.md#foreach)
- [get](dataStructure.LRUCache.md#get)
- [has](dataStructure.LRUCache.md#has)
- [keys](dataStructure.LRUCache.md#keys)
- [set](dataStructure.LRUCache.md#set)
- [values](dataStructure.LRUCache.md#values)

## Constructors

### constructor

• **new LRUCache**\<`K`, `V`\>(`maxCacheLen`): [`LRUCache`](dataStructure.LRUCache.md)\<`K`, `V`\>

#### Type parameters

| Name |
| :------ |
| `K` |
| `V` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `maxCacheLen` | `number` | 最大缓存长度 |

#### Returns

[`LRUCache`](dataStructure.LRUCache.md)\<`K`, `V`\>

#### Overrides

Map\&lt;K, V\&gt;.constructor

#### Defined in

[src/dataStructure/LRUCache.ts:6](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/LRUCache.ts#L6)

## Properties

### [toStringTag]

• `Readonly` **[toStringTag]**: `string`

#### Inherited from

Map.[toStringTag]

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.symbol.wellknown.d.ts:137

___

### maxCacheLen

• **maxCacheLen**: `number`

最大缓存长度

#### Defined in

[src/dataStructure/LRUCache.ts:6](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/LRUCache.ts#L6)

___

### size

• `Readonly` **size**: `number`

#### Inherited from

Map.size

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.collection.d.ts:45

___

### [species]

▪ `Static` `Readonly` **[species]**: `MapConstructor`

#### Inherited from

Map.[species]

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.symbol.wellknown.d.ts:319

## Methods

### [iterator]

▸ **[iterator]**(): `IterableIterator`\<[`K`, `V`]\>

Returns an iterable of entries in the map.

#### Returns

`IterableIterator`\<[`K`, `V`]\>

#### Inherited from

Map.[iterator]

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.iterable.d.ts:119

___

### clear

▸ **clear**(): `void`

#### Returns

`void`

#### Inherited from

Map.clear

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.collection.d.ts:20

___

### delete

▸ **delete**(`key`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `K` |

#### Returns

`boolean`

true if an element in the Map existed and has been removed, or false if the element does not exist.

#### Inherited from

Map.delete

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.collection.d.ts:24

___

### entries

▸ **entries**(): `IterableIterator`\<[`K`, `V`]\>

Returns an iterable of key, value pairs for every entry in the map.

#### Returns

`IterableIterator`\<[`K`, `V`]\>

#### Inherited from

Map.entries

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.iterable.d.ts:124

___

### forEach

▸ **forEach**(`callbackfn`, `thisArg?`): `void`

Executes a provided function once per each key/value pair in the Map, in insertion order.

#### Parameters

| Name | Type |
| :------ | :------ |
| `callbackfn` | (`value`: `V`, `key`: `K`, `map`: `Map`\<`K`, `V`\>) => `void` |
| `thisArg?` | `any` |

#### Returns

`void`

#### Inherited from

Map.forEach

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.collection.d.ts:28

___

### get

▸ **get**(`key`): `undefined` \| `V`

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `K` |

#### Returns

`undefined` \| `V`

#### Overrides

Map.get

#### Defined in

[src/dataStructure/LRUCache.ts:10](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/LRUCache.ts#L10)

___

### has

▸ **has**(`key`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `K` |

#### Returns

`boolean`

boolean indicating whether an element with the specified key exists or not.

#### Inherited from

Map.has

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.collection.d.ts:37

___

### keys

▸ **keys**(): `IterableIterator`\<`K`\>

Returns an iterable of keys in the map

#### Returns

`IterableIterator`\<`K`\>

#### Inherited from

Map.keys

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.iterable.d.ts:129

___

### set

▸ **set**(`key`, `value`): `this`

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `K` |
| `value` | `V` |

#### Returns

`this`

#### Overrides

Map.set

#### Defined in

[src/dataStructure/LRUCache.ts:22](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/LRUCache.ts#L22)

___

### values

▸ **values**(): `IterableIterator`\<`V`\>

Returns an iterable of values in the map

#### Returns

`IterableIterator`\<`V`\>

#### Inherited from

Map.values

#### Defined in

node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/lib/lib.es2015.iterable.d.ts:134
